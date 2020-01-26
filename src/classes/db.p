@CLASS
db

@selectAll[]
^dbconnect{
    ^return[^table::sql{SELECT
        id, date, header, body
        FROM
        news
        ORDER BY
        date DESC
    }]
}

@selectCurrent[id]
^dbconnect{
    ^return[^table::sql{select
    id, date, header, body
    from
    news
    where
    id=$id
}]
}

@update[id]
^dbconnect{
    ^void:sql{UPDATE news SET
        date='${form:date}',
        body='${form:body}',
        header='${form:header}'
        WHERE
        id=$id
    }
}


@delete[id]
^dbconnect{
    ^void:sql{
        DELETE FROM news
        WHERE news.id = ${id}
    }
}