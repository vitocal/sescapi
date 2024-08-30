import * as React from 'react'
import { Calendar, dateFnsLocalizer } from 'react-big-calendar'

import format from 'date-fns/format'
import parse from 'date-fns/parse'
import startOfWeek from 'date-fns/startOfWeek'
import getDay from 'date-fns/getDay'
import enUS from 'date-fns/locale/en-US'

import 'react-big-calendar/lib/css/react-big-calendar.css'
import './calendar.css'

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


function Event({ event }) {

    return (
        <div className="event">
            <strong>{event.title}</strong>
            <span>{event.desc && ':  ' + event.desc}</span>
            {event.unit &&
                <span className='unit-tag' unit={event.unit.toLowerCase()}>{event.unit}</span>}
        </div>
    )
}


export const MyCalendar = ({ events } = props) => {
    const components = {
        event: Event,
    };

    return (<div>
        <Calendar
            components={components}
            localizer={localizer}
            events={events}
            startAccessor="start"
            endAccessor="end"
            popup={true}
            style={{ height: 880 }}
        />
    </div>)
}