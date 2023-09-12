List<int> sieveAlgoritm(int n) {
  List<bool> isPrime = List<bool>.filled(n + 1, true);
  List<int> primes = [];

  for (int p = 2; p * p <= n; p++) {
    if (isPrime[p]) {
      for (int i = p * p; i <= n; i += p) {
        isPrime[i] = false;
      }
    }
  }

  for (int i = 0; i <= n; i++) {
    if (isPrime[i]) {
      primes.add(i);
    }
  }

  return primes;
}

void main() {
  int n = 201; 
  String nama = "Arya Wicaksana Hidayat";
  String nim = "2141720207";
  List<int> primeNumbers = sieveAlgoritm(n);

  print("Bilangan prima dari 0 hingga $n adalah:");
  print(primeNumbers);
  print("Nama : $nama");
  print("NIM : $nim");
}