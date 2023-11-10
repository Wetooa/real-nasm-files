const NUMBER_OF_ESSENTIAL_DATA = 5;
const TYPE = prompt("SELECT THE TYPE OF SYSTEM TO DEVELOP: ");

// label = input("ENTER LABEL: ").lower()
// shortenedLabel = input("ENTER SHORTENED LABEL: ").lower()
// data = [input("ENTER ESSENTIAL DATA NUMBER " + str(i) + ": ").lower() for i in range(1, NUMBER_OF_ESSENTIAL_DATA + 1)]

// HEADER = """section .data
//   ; HEADER
//   header: db "Cebu Institute of Technology - University", 10, "College of Computer Studies", 10, "College Library", 10, "First Semester Academic Year 2023-2024", 10, 10, """ + type + """
//   headerLen: equ $-header

//   """
// LABELS = """
//   ; INITIALIZE LABELS
//   lbl{data1}: db "Product {data1Display} No: "
//   lbl{data1}Len: equ $-{data1}
//   lbl{data2}: db "{data2Display}: "
//   lbl{data2}Len: equ $-lbl{data2}
//   lbl{data3}: db "{data3Display}: "
//   lbl{data3}Len: equ $-lbl{data3Display}
//   lbl{data4}: db "{data4Display}: "
//   lbl{data4}Len: equ $-lbl{data4Display}
//   lbl{data5}: db "{data5Display}: "
//   lbl{data5}Len: equ $-lbl{data5}

// """

// print(LABELS.format(data))

console.log(TYPE);
