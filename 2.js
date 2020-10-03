const input = []

const string = '2020-10-03'

input.push(...string.split('-'))

const showTanggal = (tanggal1, tanggal2) => {
    const input1 = []
    const input2 = []
    let container = []

    input1.push(...tanggal1.split('-'))
    input2.push(...tanggal2.split('-'))

    let hari1 = input1[2]
    let hari2 = input2[2]

    if (hari1[0] == 0) {
        hari1 = hari1[1]
    }
    if (hari2[0] == 0) {
        hari2 = hari2[1]
    }

    for (let i = parseInt(hari1); i <= parseInt(hari2); i++) {
        container.push(`${input1[0]}-${input1[1]}-${i}`)
    }
    return console.log(`Hasil : \n${container.join(', ')}`)
}

/*
    Masukkan Tanggal
    Parameter1 = Mulai Tanggal
    Paremeter2 = Akhir Tanggal
*/

showTanggal('2020-10-04', '2020-10-12')