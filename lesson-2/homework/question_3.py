import pyodbc
con_str = "DRIVER={SQL SERVER};SERVER=WIN-F7616C8DJBI\SQLEXPRESS;DATABASE=lesson2;Trusted_Connection=yes"
con = pyodbc.connect(con_str)
cursor = con.cursor()

cursor.execute(
    """
    SELECT * FROM photos
    """
)

response = cursor.fetchone()

id, photo = response
with open("demo_photo.png", "wb") as f:
    f.write(photo)
