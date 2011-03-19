book('book1').
book('book2').
book('book3').
book('book4').
book('book5').

author('author1').
author('author2').
author('author3').
author('author4').
author('author5').

author_book('author1','book1').
author_book('author2','book2').
author_book('author3','book3').
author_book('author4','book4').
author_book('author5','book5').
author_book('author1','book2').
author_book('author3','book2').

coauthor( FirstAuthor, SecondAuthor) :-
(FirstAuthor \= SecondAuthor),
author( FirstAuthor ),
author( SecondAuthor ),
author_book( FirstAuthor, SomeBook ),
author_book( SecondAuthor, SomeBook ).

%author_book('author1',Book).

