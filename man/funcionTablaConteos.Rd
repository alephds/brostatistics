% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/funcionTablaConteos.R
\name{funcionTablaConteos}
\alias{funcionTablaConteos}
\title{Función matrices de conteos}
\usage{
funcionTablaConteos(marcas, variablesFiltro, datos)
}
\arguments{
\item{marcas}{Lista cuyas entradas son vectores de longitud 2, donde cada vector tiene como primer entrada el nombre de las marcas como viene escrito en las variables, y la segunda entrada se refiere al valor dentro de dichas variables.}

\item{variablesFiltro}{vector de tipo carácter con los nombres de las variables que se toman como filtro}

\item{datos}{dataframe con el que se trabajará}
}
\description{
Crea la matriz de conteos a partir de variables de atribución de características
}
\examples{
data(datosFuncionConteo)
datos<-datos \%>\%
select(contains('P1Conoce'),contains('P1bConoce'),contains('P3Logos'),contains('P11'),contains('P12'))
marcas<-list(
 c('Banamex','Banamex'),
c('Banco.Azteca','Banco Azteca'),
c('Banco.Compartamos','Banco Compartamos'),
c('Banco.Famsa','Famsa'),
c('Banco.Walmart','Walmart'),
c('Bancoppel','Bancoppel'),
c('Banorte','Banorte'),
c('BBVA.Bancomer','BBVA Bancomer'),
c('HSBC','HSBC'),
c('Inbursa','Inbursa'),
c('IXE','IXE'),
c('Santander','Santander'),
c('Scotiabank','Scotiabank')
)
resultado<-funcionTablaConteos(marcas=marcas,
                               variablesFiltro=c("P1ConoceBancos.","P1bConoceBancos.","P3Logos."),
                               datos=datos)
}
\keyword{conteos}
\keyword{tabla}
\keyword{tabladeconteos}

