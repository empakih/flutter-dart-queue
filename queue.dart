class Queue<T> {
  final List<T> _items = [];

  // Menambahkan elemen ke dalam antrean (posisi paling belakang)
  void enqueue(T item) {
    _items.add(item);
    print('[Enqueue] $item berhasil masuk antrean.');
  }

  // Mengambil dan menghapus elemen dari depan antrean (FIFO)
  T? pop() {
    if (_items.isEmpty) {
      print('[Pop Gagal] Antrean saat ini kosong.');
      return null;
    }
    T item = _items.removeAt(0);
    print('[Pop] $item telah diproses dan keluar antrean.');
    return item;
  }

  // Menampilkan isi antrean saat ini
  void tampilkan() {
    if (_items.isEmpty) {
      print('Status Antrean: (Kosong)');
    } else {
      print('Status Antrean: Depan -> ${_items.join(', ')} <- Belakang (Total: ${_items.length})');
    }
  }
}

void main() {
  print('=== SIMULASI ANTREAN BANK (STRING) ===');
  Queue<String> antreanBank = Queue<String>();

  antreanBank.tampilkan();
  antreanBank.enqueue('Andi');
  antreanBank.enqueue('Budi');
  antreanBank.enqueue('Citra');
  antreanBank.tampilkan();

  print('\n-- Melayani Pelanggan --');
  antreanBank.pop();
  antreanBank.tampilkan();

  print('\n-- Tambah Pelanggan Baru --');
  antreanBank.enqueue('Dewi');
  antreanBank.tampilkan();

  print('\n=== SIMULASI ANTREAN NOMOR (INTEGER) ===');
  Queue<int> nomorAntrean = Queue<int>();
  nomorAntrean.enqueue(101);
  nomorAntrean.enqueue(102);
  nomorAntrean.pop();
  nomorAntrean.tampilkan();
}