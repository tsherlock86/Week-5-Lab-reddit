module LinksHelper


def linkhome
  @link.downvote
  redirect_to(links_path)
end



end
