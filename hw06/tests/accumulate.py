test = {
  'name': 'accumulate',
  'points': 1,
  'suites': [
    {
      'cases': [
        {
          'code': r"""
          scm> (define (identity x) x)
          identity
          scm> (accumulate * 1 5 identity)
          120
          """,
          'hidden': False,
          'locked': False
        },
        {
          'code': r"""
          scm> (define (square x) (* x x))
          square
          scm> (accumulate + 0 5 square)
          55
          scm> (accumulate + 5 5 square)
          60
          """,
          'hidden': False,
          'locked': False
        },
        {
          'code': r"""
          scm> (define (identity x) x)
          identity
          scm> (accumulate + 0 1000 identity)
          500500
          scm> (accumulate + 0 5000 identity)
          12502500
          """,
          'hidden': False,
          'locked': False
        }
      ],
      'scored': True,
      'setup': r"""
      scm> (load 'hw06)
      """,
      'teardown': '',
      'type': 'scheme'
    }
  ]
}
