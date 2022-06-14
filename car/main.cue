package car

import(
  "universe.dagger.io/alpine"
  "universe.dagger.io/bash"
)

#Run: {
    _img: alpine.#Build & {
        packages: bash: _
    }

    bash.#Run & {
        always: false
        input:  _img.output
    }
}
