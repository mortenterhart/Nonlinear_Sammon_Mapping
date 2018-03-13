# Nonlinear Sammon Mapping
This project examines the significance of the _Nonlinear Sammon Mapping_ algorithm
by John W. Sammon, JR. related to the Data Mining process which is discussed in
[Runker's book about _Data Mining_](https://link.springer.com/book/10.1007%2F978-3-8348-2171-3).

## The Sammon Algorithm
The Sammon mapping algorithm projects a high-dimensional data set into a set of lower
dimensionality. Therefore it is a very useful tool at multidimensional scaling and
representation of complex forms or data sets in an easier way. Using this method,
it is easier to access the relations between data points while being able to
recognize patterns faster.

### Procedure
Denote the distance between `i`th and `j`th objects in the original space by
`d_{ij}^*`, and the distance between their projections by `d_{ij}`.
Sammon's mapping aims to minimize the following error function, which is often referred to as
**Sammon's stress** or **Sammon's error**:

![Sammon stress function](https://camo.githubusercontent.com/06d0bb30809939df61df8dc7ef98fc9cd1051a38/68747470733a2f2f77696b696d656469612e6f72672f6170692f726573745f76312f6d656469612f6d6174682f72656e6465722f7376672f61313632613863313963383635383639636462386563376230616136636430643765396633633638)

The minimization can be performed either by gradient descent, as proposed initially,
or by other means, usually involving iterative methods. The number of iterations need
to be experimentally determined and convergent solutions are not always guaranteed.
Many implementations prefer to use the first Principal Components as a starting configuration.

## References
* **J.W. Sammon** (1969). _"A nonlinear mapping for data structure analysis"_.
  IEEE Transactions on Computers. 18: 401, 402,403–409.
* **Thomas A. Runkler** (2015). _"Data Mining - Modelle und Algorithmen intelligenter Datenanalyse"_.
  In Computational Intelligence, pp 47-51. 2. Auflage. Springer Vieweg. Berlin 2015.
* **Elzbieta Pȩkalska**, **Dick de Ridder**, **Robert P.W. Duin** and **Martin A. Kraaijveld** (1999).
  _"A new method of generalizing Sammon mapping with application to algorithm speed-up"_.
  Proc. 5th Annual Conference of the Advanced School for Computing and Imaging (ASCI1999).
* **Scott Hotton** and **Jeff Hoshimi**. _"HiSee – Projection Algorithms"_.
  [Online Resource](http://hisee.sourceforge.net) (Abrufdatum: 08.03.2018).
* **Paul Henderson** (2012). _"Sammon Mapping"_.
  [Online Resource](http://homepages.inf.ed.ac.uk/rbf/CVonline/LOCAL_COPIES/AV0910/henderson.pdf) (Abrufdatum: 08.03.2018).

