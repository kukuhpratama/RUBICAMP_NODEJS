console.log(
    "Selamat datang di permainan Tebak Kata, silahkan isi dengan jawaban yang benar ya!\n"
);

const fs = require("fs");
const readline = require("readline");

const file = fs.readFileSync('data11.json')
const data = JSON.parse(file);


const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
    prompt: "Tebakan: "
});


let nilai = 0;

console.log(`Pertanyaan: ${data[nilai].definition}`);
rl.prompt();

rl.on('line', line => {
    if (nilai < data.length - 1) {
        if (line.toLowerCase() !== data[nilai].term) {
            console.log('Wkwkwk, Anda kurang beruntung!');
            rl.prompt();
        } else {
            nilai++;
            console.log('Selamat Anda benar!');
            console.log(`Pertanyaan: ${data[nilai].definition}`);
            rl.prompt();
        }
    } else {
        if (line.toLowerCase() !== data[nilai].term) {
            console.log('Wkwkwk, Anda kurang beruntung!');
            rl.prompt();
        } else {
            console.log('Selamat Anda benar!\n');
            console.log('Hore Anda Menang!');
            process.exit(0);
        }
    }
});