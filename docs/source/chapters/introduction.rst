..
   ****************************************************************************
    pgRouting Workshop Manual
    Copyright(c) pgRouting Contributors

    This documentation is licensed under a Creative Commons Attribution-Share
    Alike 3.0 License: http://creativecommons.org/licenses/by-sa/3.0/
   ****************************************************************************

.. _introduction:

Introduction
===============================================================================

.. rubric:: Abstract

`pgRouting <http://www.pgrouting.org>`_ adds routing functionality to `PostGIS <http://www.postgis.org>`_. This introductory workshop will show you how.
Providing practical examples using  `OpenStreetMap <http://www.openstreetmap.org>`_ road network data.
Covering from how to prepare the data, make routing queries, write a custom 'plpgsql' functions up to draw your route in a web-mapping application.
In other words, integrating pgRouting with other FOSS4G tools,

Navigation for road networks requires complex routing algorithms that support turn restrictions and even time-dependent attributes.
pgRouting is an extendible open-source library that provides a variety of tools for shortest path search as extension of postgreSQL and postGIS.

The workshop will focus on shortest path search with pgRouting in real road networks, the workshop will show how to:

* Install pgRouting,
* create a routing topology,
* use pgRouting implemented algorithms,
* import an `OpenStreetMap <http://www.openstreetmap.org>`_ road network data,
* write advanced queries,
* write a custom postgreSQL stored procedure in ‘plpgsql’,
* build a simple browser application,
* build a basic map graphical user interface with OpenLayers 3.



.. rubric:: Prerequisites

* Workshop level: intermediate.
* Attendee's previous knowledge: SQL (postgreSQL, postGIS), Javascript, HTML.
* Equipments: This workshop use `OSGeo Live <http://live.osgeo.org>`_. version 10.0.


.. rubric:: Presenters and Authors

* *Daniel Kastl* is founder and CEO of `Georepublic <http://georepublic.info>`_ and works in Germany and Japan. He is moderating and promoting the pgRouting community and development since the beginning of the project, and he's an active OSM contributor in Japan.

* *Frédéric Junod* works at the Swiss office of `Camptocamp <http://www.camptocamp.com>`_ for about six years. He's an active developer of many open source GIS projects from the browser (GeoExt, OpenLayers) to the server world (MapFish, Shapely, TileCache).

* *Éric Lemoine* works at the French office of `Camptocamp <http://www.camptocamp.com>`_. He's a core developer and PSC member of the OpenLayers project, and one of the main contributors to OpenLayers 3.

* *Vicky Vergara* works at `Georepublic <http://georepublic.info>`_ and works in Mexico. She's a core developer of pgRouting project, and one of the main contributors of pgRouting.

.. rubric:: License

This work is licensed under a `Creative Commons Attribution-Share Alike 3.0 License <http://creativecommons.org/licenses/by-sa/3.0/>`_.

.. image:: images/license.png


..
    TODO check of this is true


.. rubric:: Supported by

.. image:: images/camptocamp.png
    :alt: Camptocamp

`Camptocamp <http://www.camptocamp.com>`_

.. image:: images/georepublic.png
    :alt: Georepublic

`Georepublic <http://georepublic.info>`_

