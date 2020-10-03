function cetakPola(rows) {
    if (rows % 2 === 0) {
        return console.log('Maaf nilai harus ganjil!')
    }
    let container = ''
    for (let i = 1; i <= rows; i++) {
        for (let j = 1; j <= rows; j++) {
            if (j === Math.ceil(rows / 2) && i % 2 !== 0) {
                container += "= "
            } else if (j === Math.ceil(rows / 2) - 1 && i % 2 === 0) {
                container += '= '
            } else if (j === Math.ceil(rows / 2) + 1 && i % 2 === 0) {
                container += '= '
            } else {
                container += '* '
            }
        }
        container += '\n'
    }

    return console.log(container)
}
cetakPola(5)