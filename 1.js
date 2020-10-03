const arr = [1, 2, 3, 4, 5]
const angka = []

var angka1 = 0
var angka2 = 0
var angka3 = 0
var angka4 = 0
var angka5 = 0

for (let i = 0; i < arr.length; i++) {
    if (i === 0) {
        let copyArr1 = [...arr]
        copyArr1.splice(i, 1)
        angka1 = copyArr1.reduce((acc, el) => {
            return acc + el
        }, 0)
    }
    else if (i === 1) {
        let copyArr2 = [...arr]
        copyArr2.splice(i, 1)
        angka2 = copyArr2.reduce((acc, el) => {
            return acc + el
        }, 0)
    }
    else if (i === 2) {
        let copyArr3 = [...arr]
        copyArr3.splice(i, 1)
        angka3 = copyArr3.reduce((acc, el) => {
            return acc + el
        }, 0)
    }
    else if (i === 3) {
        let copyArr4 = [...arr]
        copyArr4.splice(i, 1)
        angka4 = copyArr4.reduce((acc, el) => {
            return acc + el
        }, 0)
    }
    else if (i === 4) {
        let copyArr5 = [...arr]
        copyArr5.splice(i, 1)
        angka5 = copyArr5.reduce((acc, el) => {
            return acc + el
        }, 0)
    }
}
console.log(`2+3+4+5 = ${angka1}`)
console.log(`1+3+4+5 = ${angka2}`)
console.log(`1+2+4+5 = ${angka3}`)
console.log(`1+2+3+5 = ${angka4}`)
console.log(`1+2+3+4 = ${angka5}`)

angka.push(angka1, angka2, angka3, angka4, angka5)
let angkaTerbesar = Math.max(...angka)
let angkaTerkecil = Math.min(...angka)
console.log(`\nAngka terbesar adalah : ${angkaTerbesar}\nAngka terkecil adalah : ${angkaTerkecil}`)