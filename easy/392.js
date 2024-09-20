var isSubsequence = function(s, t) {
    var i = 0
    var j = 0
    while (i < s.length && j < t.length) {
        if (s.charAt(i) == t.charAt(j)) {i += 1}
        j += 1
    }
    return i == s.length
};
