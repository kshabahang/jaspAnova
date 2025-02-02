//
// Copyright (C) 2013-2022 University of Amsterdam
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public
// License along with this program.  If not, see
// <http://www.gnu.org/licenses/>.
//

import QtQuick	2.15
import JASP.Controls	1.0
import JASP.Widgets		1.0
import JASP				1.0
import "./" as Classical


Section
{
	title: qsTr("Model")
	property alias source: components.source

	VariablesForm
	{
		preferredHeight: jaspTheme.smallDefaultVariablesFormHeight
		AvailableVariablesList { name: "components"; title: qsTr("Components"); id: components }
		AssignedVariablesList {  name: "modelTerms"; title: qsTr("Model Terms"); listViewType: JASP.Interaction }
	}

	Classical.SumOfSquares{}
}
