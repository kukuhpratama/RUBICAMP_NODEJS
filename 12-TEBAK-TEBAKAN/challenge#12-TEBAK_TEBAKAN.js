const fs = require('fs');
const readline = require('readline');
if (!process.argv[2]) {
    console.log('Tolong sertakan nama file sebagai input soal. "Misalnya node tebakkata.js data.json"');
    process.exit(1);
}


const file = fs.readFileSync(process.argv[2], 'utf8')
const data = JSON.parse(file);
let benar = 0;
let salah = 1;

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    prompt: 'tebakan> '
});

;
console.log('Selamat datang di permainan Tebak-tebakan. kamu akan diberikan pertanyaan dari file ini "data.json".');
console.log('untuk bermain, jawablah dengan jawaban yang sesuai.');
console.log('Gunakan "skip" untuk menangguhkan pertanyaannya, dan di akhir pertanyaan akan ditanyakan lagi.');
console.log(`Jawaban : ${data[benar].definition}`);

rl.prompt();
rl.on('line', function (jawaban) {
    if (jawaban.toLowerCase() === data[benar].term.toLowerCase()) {
        console.log('Anda Beruntung!\n');
        benar++
        salah = 1;
        if (benar == data.length) {
            console.log('Anda Berhasil!');
            process.exit();
        }
        console.log(`Jawaban : ${data[benar].definition}`);
        rl.prompt();
    } else if (jawaban.toLowerCase() == 'skip') {
        data.push(data[benar]);
        benar++;
        console.log(`Jawaban : ${data[benar].definition}`);
        rl.prompt();
    } else {
        console.log(`KAnda urang Beruntung! anda telah salah ${salah} kali, silahkan coba lagi. \n`);
        salah++
        rl.prompt();
    }
});