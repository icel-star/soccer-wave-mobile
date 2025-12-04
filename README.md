# soccer_wave

Tugas 7

 1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
=>  Widget tree adalah struktur hierarki yang menunjukkan bagaimana widget-widget tersusun di dalam aplikasi Flutter. Setiap widget dapat memiliki satu atau lebih widget anak (child), dan semuanya diatur dalam bentuk pohon (tree). Hubungan parent-child berarti widget induk (parent) mengatur tata letak, ukuran, dan perilaku widget anak (child). Misalnya, Column adalah parent yang berisi beberapa child widget seperti Text dan Button. Jika parent dihapus atau diubah, maka semua child-nya juga akan terpengaruh.

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
=> Widget-widget yang digunakan dalam proyek Soccer Wave serta fungsinya adalah sebagai berikut:
- MaterialApp → Widget utama aplikasi yang menyediakan tema, navigasi, dan pengaturan global.
- ThemeData → Mengatur tampilan dan warna tema aplikasi, termasuk primarySwatch dan secondary.
- Scaffold → Menyediakan struktur dasar halaman seperti AppBar dan body.
- AppBar → Menampilkan bilah atas berisi judul aplikasi “Soccer Wave”.
- Padding → Memberikan jarak di sekeliling konten halaman.
- Column → Menyusun widget secara vertikal, seperti menampung baris InfoCard dan teks sambutan.
- Row → Menyusun beberapa widget InfoCard secara horizontal.
- InfoCard (custom widget) → Menampilkan informasi pengguna seperti NPM, Nama, dan Kelas dalam bentuk kartu.
- Card → Digunakan di dalam InfoCard untuk membuat tampilan kotak dengan bayangan lembut.
- Container → Mengatur ukuran, padding, dan tata letak isi dari kartu dan item grid.
- Text → Menampilkan teks seperti judul, nama, dan label tombol.
- SizedBox → Memberikan jarak antar elemen (misalnya jarak vertikal 16).
- Center → Menempatkan widget anak di tengah halaman.
- GridView.count → Menampilkan daftar item (ItemCard) dalam bentuk grid 3 kolom.
- ItemCard (custom widget) → Kartu berwarna yang menampilkan ikon dan teks dari setiap item menu.
- Material → Membungkus setiap ItemCard agar mendukung efek Material Design seperti ripple.
- InkWell → Memberikan efek sentuhan (klik) dan aksi onTap yang menampilkan SnackBar.
- Icon → Menampilkan ikon di dalam ItemCard.
- SnackBar → Muncul sementara di bagian bawah layar untuk memberikan notifikasi ketika item ditekan.
- MediaQuery → Mengambil ukuran layar agar InfoCard bisa menyesuaikan lebar perangkat.

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
=> MaterialApp berfungsi sebagai wadah utama aplikasi Flutter berbasis Material Design. Dalam proyek ini, MaterialApp digunakan untuk :
- Menentukan judul aplikasi (title: 'Flutter Demo'),
- Mengatur tema global melalui ThemeData, seperti warna utama (primarySwatch: Colors.pink) dan warna sekunder.
- Menentukan halaman awal (home), yaitu MyHomePage().
Alasan mengapa widget ini sering dijadikan widget root adalah karena:
- Menyediakan konteks Material Design agar widget seperti Scaffold, AppBar, dan SnackBar bisa berfungsi.
- Mengatur navigasi antar halaman dengan routes.
- Mengatur tema, font, dan skema warna yang berlaku ke seluruh aplikasi.
- Tanpa MaterialApp, banyak widget bawaan Flutter tidak dapat menampilkan gaya dan perilaku Material Design dengan benar.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
=> StatelessWidget → Widget yang tidak memiliki perubahan data atau status (state) setelah dibuat. Isinya tetap, hanya dibangun sekali.
Contoh: Text, Icon, Container.
=> StatefulWidget → Widget yang bisa berubah selama aplikasi berjalan, karena memiliki state yang bisa diperbarui dengan setState().
Contoh: Checkbox, TextField, Counter App.
=> Kapan digunakan:
Gunakan StatelessWidget jika tampilan tidak perlu berubah.
Gunakan StatefulWidget jika tampilan perlu diperbarui berdasarkan interaksi pengguna atau data dinamis.

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?
=> BuildContext adalah objek yang menunjukkan posisi sebuah widget di dalam struktur aplikasi atau widget tree. Objek ini penting karena memungkinkan widget untuk berkomunikasi dan mengambil informasi dari widget lain yang berada di atasnya (seperti tema, warna, atau Scaffold).
Di dalam metode build, BuildContext digunakan agar widget bisa membangun tampilan yang sesuai dengan lingkungannya. Misalnya, widget dapat menyesuaikan warna berdasarkan tema aplikasi atau menampilkan pesan melalui Scaffold yang ada di atasnya.
Singkatnya, BuildContext membantu Flutter memahami di mana sebuah widget berada dan bagaimana ia harus ditampilkan sesuai dengan hierarki aplikasinya.


6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
=> Hot Reload → Memperbarui kode yang diubah langsung ke aplikasi tanpa menghapus state. Berguna saat mengubah tampilan atau layout.
Contoh: mengubah warna atau teks, lalu hasilnya langsung muncul.
=> Hot Restart → Memulai ulang aplikasi dari awal, menghapus seluruh state.
Contoh: jika mengubah variabel global atau inisialisasi awal, kita gunakan hot restart agar perubahan terdeteksi.
=> Perbedaan utama → Hot reload prosesnya cepat dan mempertahankan state, sedangkan hot restart lebih lambat dan mengulang dari awal aplikasi.

TUGAS 2

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?
=> Navigator.push() digunakan untuk menambahkan halaman baru di atas halaman saat ini, sehingga ketika pengguna menekan tombol back, mereka akan kembali ke halaman sebelumnya. Ini seperti menambahkan lembaran baru di atas tumpukan yang sudah ada. Sedangkan Navigator.pushReplacement() menggantikan halaman saat ini dengan halaman baru, sehingga halaman sebelumnya dihapus dari tumpukan dan tidak bisa dikembalikan dengan tombol back.

Dalam aplikasi Football Shop, saya akan menggunakan Navigator.push() untuk situasi seperti navigasi dari halaman beranda ke detail produk dimana pengguna perlu memiliki opsi untuk kembali ke halaman sebelumnya. Sementara Navigator.pushReplacement() akan saya terapkan setelah proses login berhasil, dimana halaman login digantikan dengan halaman beranda sehingga pengguna tidak bisa kembali ke halaman login dengan tombol back.

2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?
=> Saya memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer dengan membuat template halaman yang konsisten di seluruh aplikasi Football Shop. Scaffold berfungsi sebagai kerangka dasar setiap halaman yang menyediakan visual yang seragam. AppBar saya gunakan untuk menampilkan judul halaman yang konsisten dengan warna tema toko. Drawer saya implementasikan sebagai menu navigasi utama yang berisi link ke berbagai section seperti beranda, create product, dll. sehingga pengguna dapat dengan mudah berpindah halaman dari mana saja dalam aplikasi. Dengan pendekatan ini, setiap halaman dalam aplikasi memiliki tampilan dan pola navigasi yang serupa.

3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.
=> Dalam menampilkan elemen-elemen form, penggunaan layout widget seperti Padding, SingleChildScrollView, dan ListView memberikan keuntungan signifikan. Padding membantu menciptakan ruang kosong yang cukup di sekitar elemen form. SingleChildScrollView sangat berguna ketika form memiliki banyak field yang tidak muat dalam satu layar, memungkinkan pengguna melakukan scroll. Sedangkan ListView ideal untuk menampilkan daftar field form.

Dalam aplikasi Football Shop, ListView saya terapkan pada drawer. Saya menerapkan Padding pada setiap field form pembuatan produk. SingleChildScrollView saya gunakan pada halaman pembuatan produk juga.

4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?
=> Untuk menciptakan identitas visual yang konsisten dengan brand Football Shop, pertama, saya memilih warna utama yang merepresentasikan diri saya atau shop saya, yyaitu warna pink. Kemudian saya membuat palet warna yang terdiri dari warna primary, secondary,dll. untuk background dan text. Warna-warna ini saya terapkan secara konsisten di seluruh komponen aplikasi seperti drawer, button, card, dll.

Dengan menerapkan tema warna yang konsisten di seluruh aplikasi, saya mengharapkan dapat menciptakan pengalaman yang baik dan mudah dikenali oleh pelanggan Football Shop.

Tugas 9
1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
=> Kita perlu membuat model Dart ketika mengambil atau mengirim data JSON karena model memberikan struktur yang jelas, keamanan tipe, dan memastikan data yang diterima atau dikirim sesuai dengan ekspektasi. Dengan model, setiap field memiliki tipe data yang pasti sehingga kesalahan seperti salah tipe, data hilang, atau data null dapat terdeteksi sejak compile-time, bukan baru saat aplikasi berjalan. Model juga memanfaatkan null-safety Dart—kita bisa menentukan mana field yang wajib ada dan mana yang boleh null—sehingga risiko error akibat nilai yang tidak ada menjadi jauh lebih kecil.

Jika kita langsung menggunakan Map<String, dynamic> tanpa model, kita kehilangan semua perlindungan ini. Tidak ada jaminan bahwa key di map benar, tidak ada pengecekan tipe, dan tidak ada otomatisasi null-safety. Akibatnya bug seperti salah nama key, field null yang tak terduga, atau tipe data yang tidak sesuai baru muncul sebagai error runtime, yang jauh lebih sulit dilacak. Selain itu, kode yang bergantung pada map mentah menjadi sulit dirawat, terutama ketika API backend berubah; kita harus mencari dan memperbaiki penggunaan key di banyak tempat secara manual. Sebaliknya, dengan model, semua perubahan cukup dilakukan pada satu titik, sehingga kode lebih rapi, konsisten, dan maintainable.

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
=> Package http berfungsi sebagai alat dasar untuk melakukan request HTTP seperti GET dan POST tanpa menyimpan informasi sesi atau autentikasi. Dalam tugas ini, http biasanya dipakai untuk mengambil data JSON atau mengirim data ke endpoint yang tidak memerlukan login. 

CookieRequest digunakan untuk menangani proses autentikasi karena ia mampu menyimpan dan mengelola cookie sesi dari Django. Dengan menyimpan cookie tersebut, CookieRequest memungkinkan Flutter mempertahankan status login pengguna dan mengakses endpoint yang dilindungi, seperti fitur yang membutuhkan login_required. 

Jadi, perbedaan utamanya adalah bahwa http bersifat stateless dan cocok untuk request biasa, sedangkan CookieRequest bersifat stateful karena menyimpan sesi pengguna dan digunakan ketika autentikasi atau akses terproteksi diperlukan.

 3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
=> Instance CookieRequest perlu dibagikan ke semua komponen aplikasi Flutter karena objek ini menyimpan status autentikasi dan cookie sesi yang digunakan untuk berkomunikasi dengan backend Django. CookieRequest bersifat stateful, artinya ia menyimpan informasi penting seperti apakah pengguna sedang login, data cookie, serta riwayat request yang membutuhkan autentikasi. Jika setiap widget atau halaman membuat instance CookieRequest sendiri, maka session tidak akan konsisten. Pengguna bisa dianggap logout di satu halaman tetapi tetap login di halaman lain. Dengan membagikan satu instance yang sama ke seluruh aplikasi, semua komponen dapat mengakses status login dan mengirim request dengan sesi yang sama, sehingga autentikasi berlangsung secara konsisten, terpusat, dan tidak menimbulkan konflik. Cara ini memastikan pengalaman pengguna yang baik dan memudahkan pengelolaan state autentikasi di seluruh aplikasi.

4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
=> Agar Flutter dapat berkomunikasi dengan Django, diperlukan beberapa konfigurasi konektivitas. Hal ini penting karena Flutter berjalan di lingkungan emulator yang berbeda dari server Django, sehingga Django perlu diatur agar mau menerima request dari alamat tersebut. Penambahan 10.0.2.2 pada ALLOWED_HOSTS dilakukan karena emulator Android tidak dapat langsung mengakses localhost. Sebagai gantinya, 10.0.2.2 adalah alamat khusus yang mewakili komputer host tempat Django berjalan. Tanpa memasukkan alamat ini, Django akan menolak request dari Flutter dengan error DisallowedHost.

Selain itu, Django juga perlu mengaktifkan CORS (Cross-Origin Resource Sharing) karena Flutter dianggap sebagai origin berbeda yang mengakses API. Jika CORS tidak diaktifkan atau tidak mengizinkan origin dari Flutter, browser engine dalam Flutter akan memblokir request karena dianggap tidak aman. Pengaturan cookie dan beberapa atribut juga penting agar session cookie Django dapat dikirim ulang oleh Flutter pada request berikutnya. Jika pengaturan ini salah, cookie tidak akan tersimpan atau tidak akan terkirim, sehingga login tidak bisa dipertahankan.

Di sisi Flutter, Android perlu diberikan izin akses internet melalui penambahan <uses-permission android:name="android.permission.INTERNET" /> pada AndroidManifest.xml. Tanpa izin ini, aplikasi tidak dapat mengirim atau menerima request jaringan, sehingga komunikasi dengan Django akan gagal total.

Jika semua konfigurasi ini tidak dilakukan dengan benar, berbagai masalah dapat terjadi. Contohnya seperti Django menolak request karena host tidak valid, request diblokir oleh kebijakan CORS, session login tidak tersimpan karena cookie tidak dikirim, atau aplikasi Flutter sama sekali tidak bisa terhubung ke internet. Akibatnya, fitur penting seperti login, akses data API, dan pengiriman form tidak dapat berfungsi.

5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
=> Pertama, pengguna memasukkan data melalui antarmuka Flutter. Flutter kemudian mengumpulkan nilai-nilai form tersebut dan mengirimkannya ke server Django melalui request HTTP, baik menggunakan http biasa maupun CookieRequest jika autentikasi dibutuhkan. Request ini dikirim dalam format JSON atau form-data sesuai struktur yang sudah ditentukan oleh backend. Begitu request diterima, Django akan memprosesnya di view yang sesuai. Djando akan memvalidasi data, membuat atau memperbarui entri di database, lalu mengembalikan response berupa JSON yang berisi status atau data hasil operasi tersebut.

Lalu, Flutter melakukan permintaan GET ke endpoint JSON Django untuk mengambil data terbaru. Django merespons dengan mengirimkan JSON berisi data yang telah tersimpan di database. Flutter menerima JSON tersebut, lalu mengonversinya menjadi model Dart untuk memastikan keamanan tipe dan memudahkan pengolahan data. Model inilah yang kemudian digunakan untuk menampilkan data pada UI Flutter. 

Jadi, secara garis besar, mekanisme nya adalah sebegai berikut: input → pengiriman data ke backend → penyimpanan dan pemrosesan di Django → pengambilan data kembali oleh Flutter → konversi ke model → tampilkan di UI Flutter.

6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
=> - Login
Proses login dimulai ketika pengguna memasukkan username dan password pada form Flutter. Setelah tombol login ditekan, Flutter mengirim data tersebut melalui instance CookieRequest ke endpoint login Django. Django kemudian memverifikasi kredensial menggunakan sistem autentikasinya, mengecek apakah username ada, apakah password valid, dan apakah akun aktif. Jika autentikasi berhasil, Django membuat session dan mengirimkan session cookie kembali ke Flutter. CookieRequest menyimpan cookie ini sehingga semua request berikutnya dianggap berasal dari pengguna yang sudah login. Setelah itu, Flutter membaca respons Django dan mengarahkan pengguna ke menu utama aplikasi. Jika gagal, Flutter hanya menampilkan pesan error tanpa menyimpan cookie.

- Register
Pengguna memasukkan data seperti username, email, dan password di Flutter. Flutter mengirimkan data ke endpoint register Django menggunakan CookieRequest atau http tergantung implementasi. Django memvalidasi data, memastikan username unik, password memenuhi syarat, dan format email benar. Jika valid, Django membuat akun baru di database dan mengembalikan respons bahwa registrasi berhasil. Flutter kemudian menampilkan informasi tersebut kepada pengguna dan mengarahkan mereka ke halaman login. Pada proses register, Django tidak otomatis membuat session, sehingga pengguna tetap harus login setelah mendaftar.

- Logout
Logout terjadi ketika Flutter mengirim request ke endpoint logout Django melalui CookieRequest. Django menghapus session di server dan mengembalikan respons bahwa pengguna telah berhasil logout. Setelah menerima ini, CookieRequest menghapus cookie session yang tersimpan di sisi Flutter, sehingga semua request selanjutnya tidak lagi membawa identitas pengguna. Flutter kemudian mengarahkan pengguna kembali ke halaman login atau landing screen.

7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
=> - Deployment Django & Penyesuaian Backend
     ~ Menambahkan domain deployment saya serta 10.0.2.2 ke ALLOWED_HOSTS agar Flutter (terutama emulator Android) bisa mengakses server Django saya. 
     ~ Mengaktifkan CORS dan mengatur cookie (SameSite=None dan Secure) sesuai kebutuhan agar session Django dapat dipertahankan oleh Flutter.

- Membuat Halaman Login, Register, dan Logout di Flutter
  ~ Membuat halaman login dengan dua input yaitu username dan password.
  ~ Flutter mengirimkan kredensial ke endpoint login Django milik saya menggunakan CookieRequest.
  ~ Django memverifikasi akun dan, jika sukses, mengembalikan session cookie yang otomatis disimpan oleh CookieRequest.
  ~ Setelah login berhasil, Flutter menavigasikan pengguna ke halaman menu utama aplikasi.
  ~ Membuat halaman register berupa form berisi username dan password.
  ~ Ketika tombol “Register” ditekan Flutter mengirim data POST ke endpoint register Django saya.
  ~ Django memvalidasi input, membuat user baru, dan mengembalikan respons JSON.
  ~ Jika sukses, Flutter menampilkan pesan berhasil dan mengarahkan ke halaman login.
  ~ Menambahkan tombol Logout di halaman menu utama Flutter yang ketika ditekan akan memanggil endpoint Django untuk logout.
  ~ View logout akan menghapus session user. Setelah logout berhasil, Flutter menghapus state login dan mengembalikan user ke halaman login.

- Integrasi Autentikasi Django–Flutter
  ~ Karena CookieRequest menyimpan session cookie Django, semua request berikutnya (GET/POST) otomatis dianggap berasal dari user yang login.
  ~ Menyesuaikan URL dan struktur body request agar cocok dengan URL login dan register milik proyek Django saya.
  ~ Menambahkan logika pengecekan login agar halaman-halaman tertentu di Flutter hanya bisa dibuka oleh user yang telah login.

- Membuat Model Dart Untuk Item (Disesuaikan Dengan Model Django)
  ~ Melihat endpoint JSON item milik Django saya dan mencatat semua field yang ada.
  ~ Membuat class model Dart yang sesuai persis dengan bentuk JSON Django saya.
  ~ Model ini digunakan untuk parsing data ketika Flutter mengambil JSON dari Django.

- Membuat Halaman Daftar Item
  ~ Membuat fungsi fetch data yang memanggil endpoint JSON Django.
  ~ Setiap card menampilkan atribut penting yang sesuai dengan model Django.
  ~ Karena data berasal dari Django saya, saya memastikan mapping JSON → Dart model sudah sesuai.