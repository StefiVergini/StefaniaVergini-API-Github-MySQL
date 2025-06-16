import requests
import mysql.connector
import time

# Conexión a MySQL
conexion = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="github_data"
)
cursor = conexion.cursor()

def insertar_datos(usuario):
    #funcion para guardar los datos en la base de datos
    #guarda repositorios y seguidores
    # Repos
    url_repos = f"https://api.github.com/users/{usuario}/repos"
    res_repos = requests.get(url_repos)
    if res_repos.status_code == 200:
        repos = res_repos.json()
        for repo in repos:
            cursor.execute("""
                INSERT IGNORE INTO repositorios (id, name, html_url, description, owner)
                VALUES (%s, %s, %s, %s, %s)
            """, (repo['id'], repo['name'], repo['html_url'], repo.get('description'), usuario))
        print(f"✔ Se guardaron {len(repos)} repositorios.")
    else:
        print("UPS! Error al obtener repositorios.")

    url_followers = f"https://api.github.com/users/{usuario}/followers"
    res_followers = requests.get(url_followers)
    if res_followers.status_code == 200:
        followers = res_followers.json()
        for follower in followers:
            cursor.execute("""
                INSERT IGNORE INTO followers (id, login, html_url, owner)
                VALUES (%s, %s, %s, %s)
            """, (follower['id'], follower['login'], follower['html_url'], usuario))
        print(f"✔ Se guardaron {len(followers)} seguidores.")
    else:
        print("UPS! Error al obtener seguidores.")

    conexion.commit()


#funcion para mostrar todos los datos de la base de datos
#dividido por usuario de github
#se muestran los repositorios y los seguidores
def mostrar_todos_los_datos():
    print("\nRepositorios por usuario:")
    cursor.execute("SELECT DISTINCT owner FROM repositorios")
    owners = cursor.fetchall()
    for (owner,) in owners:
        print(f"\nRepos de {owner}:")
        cursor.execute("SELECT name, html_url FROM repositorios WHERE owner = %s", (owner,))
        for (name, url) in cursor.fetchall():
            print(f"  - {name} ({url})")

    print("\nSeguidores por usuario:")
    cursor.execute("SELECT DISTINCT owner FROM followers")
    owners = cursor.fetchall()
    for (owner,) in owners:
        print(f"\nSeguidores de {owner}:")
        cursor.execute("SELECT login, html_url FROM followers WHERE owner = %s", (owner,))
        for (login, url) in cursor.fetchall():
            print(f"  - {login} ({url})")


#funcion para mostrar todos los datos de la base de datos
#de un solo usuario -- ingresandolo
#se muestran los repositorios y los seguidores
def mostrar_por_usuario():
    usuario = input("Ingrese el nombre del usuario de GitHub: ")

    print(f"\nRepositorios de {usuario}:")
    cursor.execute("SELECT name, html_url FROM repositorios WHERE owner = %s", (usuario,))
    repos = cursor.fetchall()
    if repos:
        for (name, url) in repos:
            print(f"  - {name} ({url})")
    else:
        print("  (No hay repositorios guardados para este usuario)")

    print(f"\nSeguidores de {usuario}:")
    cursor.execute("SELECT login, html_url FROM followers WHERE owner = %s", (usuario,))
    followers = cursor.fetchall()
    if followers:
        for (login, url) in followers:
            print(f"  - {login} ({url})")
    else:
        print("  (No hay seguidores guardados para este usuario)")


#funcion de Menu
def main():
    while True:
        print("\nCargando menú...")
        time.sleep(1)
        print("\n=== MENÚ ===")
        print("1. Insertar datos de un usuario de GitHub")
        print("2. Mostrar todos los datos agrupados por usuario")
        print("3. Mostrar datos de un solo usuario")
        print("0. Salir")

        opcion = input("Seleccione una opción: ")

        if opcion == "1":
            usuario = input("Ingrese nombre de usuario de GitHub: ")
            insertar_datos(usuario)
        elif opcion == "2":
            mostrar_todos_los_datos()
        elif opcion == "3":
            mostrar_por_usuario()
        elif opcion == "0":
            print("Saliendo...")
            break
        else:
            print("Opción inválida.")

    cursor.close()
    conexion.close()


# Entrada principal
if __name__ == "__main__":
    main()
