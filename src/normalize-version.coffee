module.exports = (version, numberOfPoints = 3) ->
    return null unless version?
    version = String(version)

    return null unless version.match /\d/

    n = version.split /\./
    return null if n.length is 1 and n[0] is ''

    while n.length < numberOfPoints
        n.push '0'

    return n.slice(0, numberOfPoints).join('.')
