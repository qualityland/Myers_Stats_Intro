library(readxl)

titanic <- read_excel("data/chapter_01/Titanic.xlsx")

# depending on 'Sex' set 'Sex.num' to 0 (female) or 1 (male)
titanic$Sex.num <- ifelse(test = titanic$Sex == "female",
                          yes = 0,
                          no = 1)

# subset of first class passengers
titanic.FirstClass <- subset(x = titanic, subset = titanic$Pclass == 1)

# or
titanic.FirstClass <- subset(titanic, Pclass == 1)

# or
titanic.NotFirstClass <- subset(titanic, Pclass %in% c(2, 3))

# subset of children
titanic.Children <- subset(titanic, Age < 18)
