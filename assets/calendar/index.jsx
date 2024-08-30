import * as React from 'react'
import * as DOM from 'react-dom/client'

import { MyCalendar } from './calendar'

export function init(ctx, data) {
    ctx.importCSS("./main.css")

    const events = data.map(activity => ({
        ...activity,
        start: new Date(activity.start),
        end: new Date(activity.end),
    }))

    const root = DOM.createRoot(ctx.root)
    root.render(<MyCalendar events={events} />)
}