class HomeController < ApplicationController
  before_action :dashboard, :backgrounds, :resume

  def index
    @projects = Project.all
    @background1 = @backgrounds.sample
    @background2 = @backgrounds.sample
  end

  private

  def backgrounds
    @backgrounds ||= [
      'https://scontent.fsnc1-1.fna.fbcdn.net/hphotos-xfa1/v/t1.0-9/12647276_10153879361060409_2239873098858253224_n.jpg?oh=14e34f97c49ee66f4dc05bb0439d5851&oe=579EA62F',
      'https://scontent.fsnc1-1.fna.fbcdn.net/hphotos-xtf1/v/t1.0-9/10411_10153818267460409_6323369116891191147_n.jpg?oh=4fe17cd838fef6e6f4122ff3818f5da0&oe=57A4BF90',
      'https://scontent.fsnc1-1.fna.fbcdn.net/hphotos-xla1/v/t1.0-9/12391405_10153759651205409_18483193435840163_n.jpg?oh=816137fc159c802f524552b5fa12942d&oe=5772CE81',
      'https://scontent.fsnc1-1.fna.fbcdn.net/hphotos-xal1/v/t1.0-9/12342453_10153759639915409_9108665616889247058_n.jpg?oh=0b4443b4e977ce24a759f6850a6fa3fa&oe=57A0B361'
    ]
  end

  def dashboard
    @dashboard ||= [
      {
        id: 'resume',
        icon: 'flash_on',
        title: 'Resume',
        description: 'Love what you see in my website and want to know more. Feel free to download my full resume',
        button_title: 'Download Cv',
        button_icon: :open_in_browser
      },
      {
        id: 'projects',
        icon: 'group',
        title: 'Projects',
        description: 'A shortlist of some of the most interesting projects I am currently working on',
        button_title: 'View my projects',
        button_icon: 'visibility'
      },
      {
        id: 'blog',
        icon: 'settings',
        title: 'Blog',
        description: 'I got a lot to say! Checkout my blog',
        button_title: 'Coming soon..',
        button_icon: 'forum'
      }
    ]
  end

  def resume
    @resume ||= begin
      {
        education: [
          {
            start_date: 'Oct 09',
            end_date: 'Jun 13',
            school: 'Imperial College London',
            course: 'MEng Computing',
            grade: "72.8% First Class Honors"
          },
          {
            start_date: 'Oct 09',
            end_date: 'Jun 13',
            school: 'Agios Nicolaos Lyceum Cyprus',
            course: 'School Leaving Certificate',
            grade: "19.44/20"
          }
        ]
      }
    end
  end
end
