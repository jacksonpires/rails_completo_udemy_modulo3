class Site::Profile::MyDataController < Site::ProfileController

  def edit
    @profile_member = ProfileMember.find_or_create_by(member_id: current_member.id)
  end
end
