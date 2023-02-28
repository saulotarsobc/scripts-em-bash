import colors from 'colors';

console.log('hello'.green); // outputs green text
console.log('i like cake and pies'.underline.red) // outputs red underlined text
console.log('inverse the color'.inverse); // inverses the color
console.log('OMG Rainbows!'.rainbow); // rainbow
console.log('Run the trap'.trap); // Drops the bass

/* ===== */
colors.setTheme({
    silly: 'rainbow',
    input: 'grey',
    verbose: 'cyan',
    prompt: 'grey',
    info: 'green',
    data: 'grey',
    help: 'cyan',
    warn: 'yellow',
    debug: 'blue',
    error: 'red'
});
console.log("this is an error".error);
console.log("this is a warning".warn);


/* ===== */
import colors2 from 'colors';
colors2.setTheme({
    custom: ['red', 'underline']
});
console.log('test'.custom);