import * as React from 'react'
import * as Server from 'react-dom/client'

import { MyCalendar } from './calendar'

export function init(ctx, data) {
    const root = Server.createRoot(ctx.root)

    ctx.importCSS("./react-big-calendar.css")
    const events = data.map(activity => ({
        ...activity,
        start: new Date(activity.start),
        end: new Date(activity.end),
    }))

    root.render(<MyCalendar events={events} />)

}