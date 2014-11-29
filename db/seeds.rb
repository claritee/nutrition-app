Member.create(email: 'c.tran83@gmail.com', name: 'Claire Tran')
member = Member.where(name: 'Claire Tran').first
Activity.create(name: 'Running', location: 'Hyde Park', time: DateTime.tomorrow, creator_id: member.id)