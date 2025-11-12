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
