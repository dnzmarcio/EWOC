# Version 0.1

## Round 1

### Test environments
* local OS X install, R 3.4.1
* ubuntu 12.04 (on travis-ci), R 3.4.1
* win-builder (devel and release)

### R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.

### Reverse dependencies

This is a new release, so there are no reverse dependencies.

### Reviewer Comments

Swetlana Herbrant 09-20-17:

Thanks, can you provide a reference in the 'Description' field of your DESCRIPTION file in the form authors (year) <doi:...> or <arXiv:...> (no space after 'doi:' and 'arXiv:')?

Any reason why 'Escalation With Overdose Control' is capitalized?

Your examples are wrapped in \dontrun{}, hence nothing gets tested. 
Please unwrap the examples if that is feasible and if they can be executed in < 5 sec for each Rd file or create additionally small toy examples. Something like \examples{
        examples for users:
        executable in < 5 sec
        for checks
        \dontshow{
               examples for checks:
               executable in < 5 sec together with the examples above
               not shown to users
        }
        donttest{
               further examples for users (not used for checks)
        }
        \dontrun{
               examples with e.g. very long run times
               (not used for checks)
        }
}
would be desirable.

Please fix and resubmit.

## Round 2

### Submission comments

Addressed all previous comments.


---
