---
title: 'DRAFT: One Year at the Python Software Foundation: A Reflection'
date: 2025-07-01
permalink: /posts/2025/07/one-year-at-psf/
header:
  teaser: https://us.pycon.org/2018/site_media/media/sponsor_files/PSF-Logo_nRGJKQo.png.300x300_q85.png
tags:
  - psf
  - python software foundation
  - career
  - reflection
  - python
  - DRAFT
---

> This is basically a reflection via words on my first year at the PSF that were given across these three talks:
> [EuroPython 2025][ep25-talk], [PyCon US 2025][pycon25-talk], and [PyTexas 2025][pytexas25-talk].
> They are only marginally different, I'm really just trying to figure out how and why people blog.
> Check out the slides: https://github.com/JacobCoffee/pytexas-2025, https://github.com/JacobCoffee/pycon-2025, 
> and https://github.com/JacobCoffee/europython-2025.

It's been exactly one year since I joined the Python Software Foundation as an Infrastructure Engineer, and what a journey it's been! 
One year ago, I broke Python.org... for a few minutes. Since then, I've had the pleasure of serving under the guidance of [Ee Durbin](https://github.com/ewdurbin/), 
the Director of Infrastructure, who had been essentially solo-maintaining the infrastructure with the help of some dedicated volunteers.
As I reflect on this milestone, I wanted to share some thoughts on the experience, challenges, and achievements 
that have defined my first year working for one of the most impactful organizations in open source.

## The Beginning

My journey with the PSF started with a bang—literally breaking Python.org for a few minutes during my first week. Talk about making an entrance! 
But this baptism by fire perfectly encapsulated what this role would be: sometimes fast-paced, frequently high-impact, and filled with learning opportunities.

What attracted me to the PSF was the chance to work on infrastructure that serves millions of Python developers worldwide. The PSF isn't just 
any organization—it's a 501(c)(3) nonprofit with a mission to "promote, protect, and advance the Python programming language, and to support 
and facilitate the growth of a diverse and international community of Python programmers." With only a handful of full-time employees,
we manage infrastructure at an impressive scale, including PyPI serving nearly 9 petabytes of bandwidth across 154 billion requests in June alone!

## Key Projects and Achievements

### Python.org Infrastructure

One of my favorite accomplishments this year was successfully [upgrading Python.org from Django 4.2 to 5.2][pydotorg-upgrade], following the previous upgrade from 
2.2 to 4.2 last year. This wasn't just a version bump—it required careful coordination with numerous dependencies, extensive testing, and a "minimum 
viable upgrade" strategy to ensure stability.

Beyond Django upgrades, I've been working with our home-rolled Platform-as-a-Service called Cabotage, which powers PyPI, Python.org, CPython's 
code speed testing platform, our new CLA bot, and recently our first "external customer"—the [PyLadiesCon site](https://conference.pyladies.com/).

Our infrastructure serves critical services including:
- PyPI (Python Package Index)
- CPython [Buildbots](https://buildbot.python.org/)
- [Mail Services](https://mail.python.org) for core developers, staff, and mailing lists
- Performance Regression Checks, Memory Benchmarking, and similar services
- Python.org itself
- PyCon US infrastructure (surprisingly lots of Typescript, save us Beeware!)
- Documentation builds
- ...and soooooo much more 😵‍💫

### Community Engagement

This year has been filled with incredible community interactions:

[**GitHub Universe**](https://githubuniverse.com): I had the privilege of attending GitHub Universe, where Python was celebrated as the #1 language. 
The three-day event was perfect for team building, meeting with our GitHub sponsors, and connecting with students and startup 
founders who built their core on Python.

**CPython Triage Team**: I'm excited to have joined the CPython triage team as a volunteer (separate from my full-time work). While I haven't 
done much beyond small code reviews and infrastructure work yet, I'm looking forward to ramping up during the PyCon US sprints, EuroPython 
sprints, and potentially the core developer sprints in September.

**Conference Participation**: From PyCon US in Pittsburgh to preparing for talks at EuroPython, I've been actively engaged with the Python 
community worldwide. Each conference brings new perspectives and reinforces how global and diverse our community truly is.

### Technical Contributions

- Automated deployments through [GitOps infrastructure](https://github.com/cabotage/cabotage-app/)
- Critical infrastructure upgrades that will enable accelerated feature development
- Collaboration on improvements with our [Developers-in-Residence](https://www.python.org/psf/developersinresidence/)
- Work on expanding Cabotage to serve trusted community projects
- Various improvements to mail services, buildbots, and download infrastructure

## Challenges and Learning

### Lessons Learned

This year has taught me invaluable lessons about working in open source infrastructure at scale:

1. **Ask early, ask often**: Working across large codebases with wildly different functions and various programming languages is tough as a 
new person. Setting yourself up for success means never hesitating to ask questions.

2. **Leader support is critical**: Having a supportive team and manager makes a world of difference. I've been fortunate to have good managers 
throughout my career, but this role is markedly different in the level of support and empowerment. Ee Durbin deserves more credit than I can 
articulate—they go above and beyond their job role and deeply care for what's best for the PSF and Python community.

3. **Celebrate tiny wins**: When you're maintaining infrastructure that serves millions, every small improvement matters. Each successful deployment, 
each resolved issue, each optimization is worth acknowledging. It's really easy to get lost in the scale and complexity
and think that you aren't making an impact or that you are completely stuck.

4. **TLS is hard**: Sometimes the simplest statement captures the deepest truth. Certificate management and secure communications at scale 
remain one of our ongoing challenges.

### Day in the Life

No two days look the same at the PSF. One day might start with a 3am pager alert about someone being overzealous with their requests, requiring 
rate limit adjustments on our Salt stack. Another might involve deep research into critical PyPI components or exploring how a greenfield project 
could benefit the community.

The variety keeps things interesting—from PyCon planning and board meetings to catching up on the backlog of infrastructure improvements that 
accumulated when the team was just one person.

## The PSF Culture

### Small Team, Mighty Impact

Despite managing a budget of approximately $5 million, the PSF operates with remarkable efficiency. Our team includes:
- Infrastructure team (Ee and myself)
- PyCon US organizers
- Sponsor relations
- Accounting staff
- PyPI support
- Security Developers-in-Residence (Seth Larson and Mike Fiedler)
- Three contractors as CPython Developers-in-Residence (Łukasz Langa, Petr Viktorin, and Serhiy Storchaka)

### The Power of Volunteers

What makes the PSF truly special is our volunteer community. We have seemingly innumerable dedicated volunteers serving across:
- Mail administration
- Community moderation
- CPython development
- PyPI development
- Work groups (Code of Conduct, Diversity & Inclusion, Education & Outreach, Fellows, Grants, Infrastructure, Python Job Board, and Trademarks)

I quickly learned that there's no one piece that makes everything work. The staff handle a portion, volunteers handle a portion, and sponsors 
support us through monetary donations, in-kind donations, or staff secondment. It truly takes a village.

### Strategic Partnerships

Our sponsors and strategic partners make our scale possible. Through partnerships with Fastly, AWS, Google, and Microsoft (GitHub), we can 
serve infrastructure that would otherwise cost thousands of dollars per month.

## Looking Forward

As I enter year two, I'm energized by what lies ahead:

### CPython Core Contribution
I'm ramping up my involvement with the CPython triage team, following the pathway to potentially become a core developer. This involves:
- Pull request reviews
- Backport management
- Issue triage and labeling
- Working with an assigned mentor

The upcoming sprints at PyCon US, EuroPython, and the core developer sprint in September will be key opportunities to deepen this involvement.

### Infrastructure Evolution
We're working to expand Cabotage to serve more trusted community projects, providing dead-simple infrastructure for groups like PyLadies. 
The goal is to alleviate costs and management overhead for volunteers and fiscal sponsorees wherever possible.

### Keep Moving Forward
In the next twelve months, I'll be:
- Serving over 2,500 attendees at PyCon US 2026 in Long Beach, California
- Continuing critical infrastructure upgrades
- Expanding our automation and monitoring capabilities
- Contributing more actively to CPython
- Helping strengthen the community that keeps Python the **#1 language** in the world

## Gratitude

### Thank You, Volunteers
I cannot emphasize enough how much our volunteers mean to the PSF and the Python ecosystem. To everyone who freely gives their time—whether 
you're maintaining mail systems, moderating communities, developing CPython, or helping with any of our work groups—your impact is felt 
throughout the lives of Pythonistas globally, even if your work isn't always publicly recognized.

### Team and Mentorship
Special thanks to Ee Durbin for their patience, guidance, and for building the foundation that allows us to serve millions of developers. 
Working alongside our Security Developers-in-Residence Seth Larson and Mike Fiedler, our CPython contractors, and the entire PSF staff has 
been an incredible learning experience.

### Sponsors and Partners
To our sponsors, namely Fastly, Datadog, AWS, Fastly, Google, Microsoft (& GitHub), and many others—thank you for your continued support through monetary donations, 
in-kind services, and more. Your contributions make it possible for our small team to have such a mighty impact.

### The Community
To everyone I've met at conferences, in pull requests, on Discord, and throughout the Python ecosystem—thank you for making this community 
what it is. Your enthusiasm, collaboration, and dedication inspire me daily.

## Final Thoughts

This year has been nothing short of transformative. I've learned that being part of the PSF means more than maintaining infrastructure—it means 
being a steward of a global community that changes lives through code. From that first-week outage to trading ideas with engineers at GitHub 
Universe, from making sponsor connections to feeling Python's global pulse, every day has reinforced why I love what I do.

I joined the PSF thinking I'd be working on servers and services. What I discovered was a mission-driven organization where a small team's 
work ripples out to impact millions of developers worldwide. Where volunteers pour their hearts into making Python better for everyone. Where 
"promoting, protecting, and advancing" a programming language really means building bridges between people, fostering learning, and creating 
opportunities. It's a much more personal and people-focused experience than I ever expected. Which is nice 🙂

As I look back on this incredible year, I'm filled with gratitude for the opportunity to serve this community. And as I look forward, I'm 
excited to continue contributing to the ecosystem that has given me—and continues to give all of us—so much.

Here's to year two, and to the amazing Python community that makes it all worthwhile!

---

*Want to get involved? You should! 😉 Check out our [volunteer opportunities](https://www.python.org/psf/volunteer/), [work groups](https://www.python.org/psf/workgroups/), 
or consider [contributing to CPython](https://devguide.python.org/). The Python community has a place for everyone!*

[//]: # (links)
[pydotorg-upgrade]: /posts/2025/07/python-org-django-5-upgrade/
[ep25-talk]: /talks/2025-07-17-europython-psf-infrastructure
[pycon25-talk]: /talks/2025-05-18-pycon-us-psf-infrastructure
[pytexas25-talk]: /talks/2025-04-13-pytexas-psf-journey
