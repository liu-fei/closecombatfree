/****************************************************************************
** Close Combat Free is a free, easily moddable CC-like game.
** Copyright (C) 2011 Tomasz Siekierda
** Email: sierdzio@gmail.com, website: http://www.sierdzio.com
**
** This program is free software: you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation, either version 3 of the License, or
** (at your option) any later version.
**
** This program is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with this program (in doc/ directory).
** If not, see <http://www.gnu.org/licenses/gpl-3.0.html>.
****************************************************************************/

#include "ccfglobal.h"

CcfGlobal::CcfGlobal(QObject *parent) :
    QObject(parent), CcfError()
{
}

void CcfGlobal::statusMsg(const QString &message)
{
    statusMessage(message);
}

void CcfGlobal::statusMessage(const QString &message)
{
    emit newStatusMessage(message, this->sender());
}

void CcfGlobal::disableQrcUse(QObject *object)
{
    emit disableQrc(object);
}