Figo Athallah<br>
2006535571<br>
Tutorial 2 Game Development

# Jawaban pertanyaan:

1. Apa saja pesan log yang dicetak pada panel Output?

- Pesan yang dicetak pada panel Output adalah “Platform initialized” saat pertama kali membuka game, kemudian muncul juga “Reached objective!” pada log yang akan dielaborasi kemunculannya pada jawaban di bawah.

2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?

- “Reached objective!” akan muncul pada panel Output.

3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

- Ada kaitannya, jika sebuah objek dengan tipe body RigidBody2D (dalam kasus ini, objek BlueShip) memasuki area CollisionShape2D yang membentuk ObjectiveArea, maka pesan log “Reached objective!” akan dicetak pada panel Output.

4. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?

- Sprite berfungsi sebagai representasi gambar atau animasi 2D dari sebuah node dalam suatu scene. Logika objek tersebut tersimpan di parent-nya, dan sprite merupakan child yang menampilkan wujud dari objek tersebut dalam game.

5. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

- Benda yang bertipe RigidBody2D memiliki reaksi dari kejadian Collision dan gerakannya akan menyesuaikan gaya yang ia dapatkan, sedangkan benda yang bertipe StaticBody2D tidak dipengaruhi dan tidak akan memiliki reaksi dari Collision.

6.  Ubah nilai atribut Mass dan Weight pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

- Berat dan massa BlueShip akan menyesuaikan nilai atribut yang kita setting, baik itu membuatnya lebih ringan atau berat sehingga lebih cepat atau lama mengalami kontak dengan StonePlatform. Perilaku BlueShip saat didorong ke atas juga akan berubah sedemikian.

7. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

- BlueShip akan terus jatuh ke bawah, menembus StonePlatform dan tidak akan muncul lagi. Ini disebabkan logika Collision yang sebelumnya menghentikan pergerakan BlueShip sudah tidak ada.

8. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

- Visualisasi BlueShip pada Viewport menyesuaikan hasil manipulasi yang telah kita lakukan padanya, dan saat dijalankan akan menampilkan hal yang sama, kecuali untuk Scale sebab logika perubahan size RigidBody2D akan di-override dengan logika physics engine, dan kita dihimbau untuk melakukan scale pada child node CollisionShape saja.

9. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

- Karena posisi StonePlatform akan relatif dengan node parentnya, yaitu PlatformBlue, dan tidak mengikuti koordinat X, Y dari scene sebenarnya.
