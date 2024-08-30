import * as React from 'react'
import { Calendar, dateFnsLocalizer } from 'react-big-calendar'

// import globalize from 'globalize'
// globalize.load(require("cldr-data")).entireSupplemental()
// globalize.loadTimeZone(require('iana-tz-data'))
// const localizer = globalizeLocalizer(globalize("en"))

import format from 'date-fns/format'
import parse from 'date-fns/parse'
import startOfWeek from 'date-fns/startOfWeek'
import getDay from 'date-fns/getDay'
import enUS from 'date-fns/locale/en-US'

const locales = {
    'en-US': enUS,
}

const localizer = dateFnsLocalizer({
    format,
    parse,
    startOfWeek,
    getDay,
    locales,
})


export const MyCalendar = ({ events } = props) => (
    <div>
        <Calendar
            localizer={localizer}
            events={events}
            startAccessor="start"
            endAccessor="end"
            style={{ height: 880 }}
        />
    </div>
)