
section .data
  ; HEADER
  header: db "Cebu Institute of Technology - University", 10, "College of Computer Studies", 10, "College Library", 10, "First Semester Academic Year 2023-2024", 10, 10, "LIST OF COMPUTER BOOKS", 10, 10
  headerLen: equ $-header

  ; INITIALIZE LABELS
  lblISBNNumber: db "ID Number: "
  lblISBNNumberLen: equ $-lblISBNNumber
  lblTitle: db "Last Name: "
  lblTitleLen: equ $-lblTitle
  lblEdition: db "First Name: "
  lblEditionLen: equ $-lblEdition
  lblAuthorName: db "Middle Name: "
  lblAuthorNameLen: equ $-lblAuthorName
  lblPublisher: db "Publisher: "
  lblPublisherLen: equ $-lblPublisher
  lblYearPublished: db "Year Level: "
  lblYearPublishedLen: equ $-lblYearPublished

  ; INITIALIZE BOOK 1
  bookNo1Lbl: db "Book No. 1", 10
  bookNo1LblLen: equ $-bookNo1Lbl
  bookNo1ISBNNumber: db "9780446310789", 10
  bookNo1ISBNNumberLen: equ $-bookNo1ISBNNumber
  bookNo1Title: db "To kill a Mockingbird", 10
  bookNo1TitleLen: equ $-bookNo1Title
  bookNo1Edition: db "2020", 10
  bookNo1EditionLen: equ $-bookNo1Edition
  bookNo1AuthorName: db "Harper Lee", 10
  bookNo1AuthorNameLen: equ $-bookNo1AuthorName
  bookNo1Publisher: db "J. B. Lippincott & Co.", 10
  bookNo1PublisherLen: equ $-bookNo1Publisher
  bookNo1YearPublished: db "1960", 10, 10
  bookNo1YearPublishedLen: equ $-bookNo1YearPublished

  ; INITIALIZE BOOK 2
  bookNo2Lbl: db "Book No. 2", 10
  bookNo2LblLen: equ $-bookNo2Lbl
  bookNo2ISBNNumber: db "9780128227862", 10
  bookNo2ISBNNumberLen: equ $-bookNo2ISBNNumber
  bookNo2Title: db "'Venomous' Bites from 'Non-Venomous' Snakes", 10
  bookNo2TitleLen: equ $-bookNo2Title
  bookNo2Edition: db "2nd", 10
  bookNo2EditionLen: equ $-bookNo2Edition
  bookNo2AuthorName: db "Scott A Weinstein, David A. Warrell, Daniel E Keyler", 10
  bookNo2AuthorNameLen: equ $-bookNo2AuthorName
  bookNo2Publisher: db "J. B. Lippincott & Co.", 10
  bookNo2PublisherLen: equ $-bookNo2Publisher
  bookNo2YearPublished: db "2022", 10, 10
  bookNo2YearPublishedLen: equ $-bookNo2YearPublished

  ; INITIALIZE BOOK 3
  bookNo3Lbl: db "Book No. 3", 10
  bookNo3LblLen: equ $-bookNo3Lbl
  bookNo3ISBNNumber: db "9781856174671", 10
  bookNo3ISBNNumberLen: equ $-bookNo3ISBNNumber
  bookNo3Title: db "Forsthoffer's Rotating Equipment Handbooks", 10
  bookNo3TitleLen: equ $-bookNo3Title
  bookNo3Edition: db "1st", 10
  bookNo3EditionLen: equ $-bookNo3Edition
  bookNo3AuthorName: db "William E. Forsthoffer", 10
  bookNo3AuthorNameLen: equ $-bookNo3AuthorName
  bookNo3Publisher: db "Forsthoffer's", 10
  bookNo3PublisherLen: equ $-bookNo3Publisher
  bookNo3YearPublished: db "2005", 10, 10
  bookNo3YearPublishedLen: equ $-bookNo3YearPublished

  ; INITIALIZE BOOK 4
  bookNo4Lbl: db "Book No. 4", 10
  bookNo4LblLen: equ $-bookNo4Lbl
  bookNo4ISBNNumber: db "", 10
  bookNo4ISBNNumberLen: equ $-bookNo4ISBNNumber
  bookNo4Title: db "100 Case Reviews in Neurosurgery", 10
  bookNo4TitleLen: equ $-bookNo4Title
  bookNo4Edition: db "1st", 10
  bookNo4EditionLen: equ $-bookNo4Edition
  bookNo4AuthorName: db "Rahul Jandial, Michele R Aizenberg, Mike Y. Chen", 10
  bookNo4AuthorNameLen: equ $-bookNo4AuthorName
  bookNo4Publisher: db "Elsvier", 10
  bookNo4PublisherLen: equ $-bookNo4Publisher
  bookNo4YearPublished: db "2016", 10, 10
  bookNo4YearPublishedLen: equ $-bookNo4YearPublished

  ; INITIALIZE BOOK 5
  bookNo5Lbl: db "Book No. 5", 10
  bookNo5LblLen: equ $-bookNo5Lbl
  bookNo5ISBNNumber: db "9780128200506", 10
  bookNo5ISBNNumberLen: equ $-bookNo5ISBNNumber
  bookNo5Title: db "100 Years of Human Chorionic Gonadotropin", 10
  bookNo5TitleLen: equ $-bookNo5Title
  bookNo5Edition: db "1st", 10
  bookNo5EditionLen: equ $-bookNo5Edition
  bookNo5AuthorName: db "Laurence A. Cole, Stephen A. Butler", 10
  bookNo5AuthorNameLen: equ $-bookNo5AuthorName
  bookNo5Publisher: db "Elsvier", 10
  bookNo5PublisherLen: equ $-bookNo5Publisher
  bookNo5YearPublished: db "2020", 10, 10
  bookNo5YearPublishedLen: equ $-bookNo5YearPublished

  ; FOOTER
  lblProgrammerName: db "Programmer Name: "
  lblProgrammerNameLen: equ $-lblProgrammerName
  programmerName: db "Adrian Sajulga", 10
  programmerNameLen: equ $-programmerName
  lblDate: db "Date: "
  lblDateLen: equ $-lblDate
  date: db "10-5-2023"
  dateLen: equ $-date

section .text
  global _start  
_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, header
  mov edx, headerLen
  int 80h

  ; DISPLAY BOOK 1
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo1Lbl
  mov edx, bookNo1LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblISBNNumber
  mov edx, lblISBNNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo1ISBNNumber
  mov edx, bookNo1ISBNNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblTitle
  mov edx, lblTitleLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo1Title
  mov edx, bookNo1TitleLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblEdition
  mov edx, lblEditionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo1Edition
  mov edx, bookNo1EditionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblAuthorName
  mov edx, lblAuthorNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo1AuthorName
  mov edx, bookNo1AuthorNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblPublisher
  mov edx, lblPublisherLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo1Publisher
  mov edx, bookNo1PublisherLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblYearPublished
  mov edx, lblYearPublishedLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo1YearPublished
  mov edx, bookNo1YearPublishedLen
  int 80h

  ; DISPLAY BOOK 2
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo2Lbl
  mov edx, bookNo2LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblISBNNumber
  mov edx, lblISBNNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo2ISBNNumber
  mov edx, bookNo2ISBNNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblTitle
  mov edx, lblTitleLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo2Title
  mov edx, bookNo2TitleLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblEdition
  mov edx, lblEditionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo2Edition
  mov edx, bookNo2EditionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblAuthorName
  mov edx, lblAuthorNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo2AuthorName
  mov edx, bookNo2AuthorNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblPublisher
  mov edx, lblPublisherLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo2Publisher
  mov edx, bookNo2PublisherLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblYearPublished
  mov edx, lblYearPublishedLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo2YearPublished
  mov edx, bookNo2YearPublishedLen
  int 80h

  ; DISPLAY BOOK 3
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo3Lbl
  mov edx, bookNo3LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblISBNNumber
  mov edx, lblISBNNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo3ISBNNumber
  mov edx, bookNo3ISBNNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblTitle
  mov edx, lblTitleLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo3Title
  mov edx, bookNo3TitleLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblEdition
  mov edx, lblEditionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo3Edition
  mov edx, bookNo3EditionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblAuthorName
  mov edx, lblAuthorNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo3AuthorName
  mov edx, bookNo3AuthorNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblPublisher
  mov edx, lblPublisherLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo3Publisher
  mov edx, bookNo3PublisherLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblYearPublished
  mov edx, lblYearPublishedLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo3YearPublished
  mov edx, bookNo3YearPublishedLen
  int 80h

  ; DISPLAY BOOK 4
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo4Lbl
  mov edx, bookNo4LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblISBNNumber
  mov edx, lblISBNNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo4ISBNNumber
  mov edx, bookNo4ISBNNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblTitle
  mov edx, lblTitleLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo4Title
  mov edx, bookNo4TitleLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblEdition
  mov edx, lblEditionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo4Edition
  mov edx, bookNo4EditionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblAuthorName
  mov edx, lblAuthorNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo4AuthorName
  mov edx, bookNo4AuthorNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblPublisher
  mov edx, lblPublisherLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo4Publisher
  mov edx, bookNo4PublisherLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblYearPublished
  mov edx, lblYearPublishedLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo4YearPublished
  mov edx, bookNo4YearPublishedLen
  int 80h

  ; DISPLAY BOOK 5
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo5Lbl
  mov edx, bookNo5LblLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblISBNNumber
  mov edx, lblISBNNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo5ISBNNumber
  mov edx, bookNo5ISBNNumberLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblTitle
  mov edx, lblTitleLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo5Title
  mov edx, bookNo5TitleLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblEdition
  mov edx, lblEditionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo5Edition
  mov edx, bookNo5EditionLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblAuthorName
  mov edx, lblAuthorNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo5AuthorName
  mov edx, bookNo5AuthorNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblPublisher
  mov edx, lblPublisherLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo5Publisher
  mov edx, bookNo5PublisherLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblYearPublished
  mov edx, lblYearPublishedLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, bookNo5YearPublished
  mov edx, bookNo5YearPublishedLen
  int 80h

  ; DISPLAY FOOTER
  mov eax, 4
  mov ebx, 1
  mov ecx, lblProgrammerName
  mov edx, lblProgrammerNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, programmerName
  mov edx, programmerNameLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, lblDate
  mov edx, lblDateLen
  int 80h
  mov eax, 4
  mov ebx, 1
  mov ecx, date
  mov edx, dateLen
  int 80h

  mov eax, 1
  mov ebx, 0
  int 80h