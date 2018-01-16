-- ========================================================================
-- Copyright (C) 2001-2004 Rodolphe Quiedeville <rodolphe@quiedeville.org>
-- Copyright (C) 2004-2014 Laurent Destailleur  <eldy@users.sourceforge.net>
-- Copyright (C) 2014      Alexandre Spangaro	<aspangaro.dolibarr@gmail.com>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.
--
-- ========================================================================

create table llx_c_animals
(
  rowid       		integer AUTO_INCREMENT PRIMARY KEY,
  entity			integer DEFAULT 1 NOT NULL, -- multi company id
  tms				timestamp,
  name       		varchar(255)  NOT NULL,
  worknumber  		varchar(5),
  nationalnumber	varchar(15),
  sirenumber		varchar(10),
  uelnnumber		varchar(15),
  fk_specie			integer		NOT NULL,  
  birthdate			datetime,
  deathdate			datetime,
  fk_deathcondition	integer,
  fk_birthcondition	integer,
  fk_tiers_bornon	integer		NOT NULL,	-- Eleveur naisseur
  fk_sex			integer		NOT NULL,
  birthweight		decimal,
  sevenmonthweight	decimal,
  fk_reprocat		integer,
  ind_ifnais		integer,
  ind_crsev			integer,
  ind_dmsev			integer,
  ind_dssev			integer,
  ind_avel			integer,
  ind_alait			integer,
  ind_ivmat			integer,
  ind_ivmatm		decimal,
  ind_ivv1			integer,
  ind_ivv			integer,
  ind_isu			integer,
  ind_isudate		datetime,
  spieciesnumber	varchar(15),
  firstcalvingage	integer,	-- in month
  nextcalvingdate	datetime,
  fk_mother			integer,
  fk_father			integer,
  mothernumber		varchar(15),
  fathernumber		varchar(15),
  mo_name			varchar(255),
  fa_name			varchar(255),
  mo_spieciesnumber	varchar(15),
  fa_spieciesnumber	varchar(15),
  extraparams		varchar(255),				-- for stock other parameters with json format
  active      		tinyint DEFAULT 1 NOT NULL
)ENGINE=innodb;



