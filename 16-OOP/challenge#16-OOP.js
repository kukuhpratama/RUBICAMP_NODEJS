class Tyre {
    constructor(merek, size) {
        this.merek = merek;
        this.size = size;
    }
}

class Car {
    constructor(merekban, ukuranban, pintu, kursi, year, nomesin) {
        this.ban = new Tyre(merekban, ukuranban);
        this.pintu = pintu;
        this.kursi = kursi;
        this.tahun = year;
        this.nomesin = nomesin;

    }
}

class JeebRubicon extends Car {
    constructor(year, nomesin) {
        super("Bridgestone", "19inch", 5, 7, year, nomesin);
        this.varian = "JeebRubicon";
        this.warranty = 1;
    }
}

class CRZ extends Car {
    constructor(year, nomesin) {
        super("Bridgestone", "15inch", 5, 5, year, nomesin);
        this.varian = "CRZ"
    }
}

class CarFctory {
    constructor() {
        this.cars = [];
        this.count = 1;
    }
    static getRandom() {
        return Math.floor(Math.random() * (9 - 2)) + 2;
    }

    produce(year) {
        //Mitsubishi
        for (let i = 0; i < CarFctory.getRandom(); i++) {
            this.cars.push(new JeebRubicon(year, this.count++))
        }
        //CRZ
        for (let i = 0; i < CarFctory.getRandom(); i++) {
            this.cars.push(new CRZ(year, this.count++))
        }
    }


    Garansi(tahun) {
        console.log(`hasil produksi saat ini : `);
        this.cars.forEach(item => {
            console.log(`
            No. Mesin : ${item.nomesin}
            Varian : ${item.varian}
            Tahun Pembuatan : ${item.tahun}
            Jumlah Pintu : ${item.pintu}
            Jumlah Kursi : ${item.kursi}
            Spesifikasi Ban : ${item.ban.merek} (${item.ban.size})
            Status garansi Pada tahun ${tahun} adalah : ${item.warranty}
            ======================================================
            `);

        })
    }

    hasilProduksi() {
        console.log(`hasil produksi saat ini : `);
        this.cars.forEach(item => {
            console.log(`
            No. Mesin : ${item.nomesin}
            Varian : ${item.varian}
            Tahun Pembuatan : ${item.tahun}
            Jumlah Pintu : ${item.pintu}
            Jumlah Kursi : ${item.kursi}
            Spesifikasi Ban : ${item.ban.merek} (${item.ban.size})
            ======================================================
            `);

        })

    }
}

let Mitsubishi = new CarFctory();
Mitsubishi.produce(2016);
Mitsubishi.produce(2019);
Mitsubishi.hasilProduksi();