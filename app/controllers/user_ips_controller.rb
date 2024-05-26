class UserIpsController < ApplicationController
  def show
    @user_ip = UserIp.find(params[:id]);
    render inline: "<table class='customers'>
        <tr><th>Name of article</th><th>Last seen</th></tr>
        <% @user_ip.user_search_articles.each do |user_article| %>
          <tr>
            <td><%= user_article.article.name %></td> <td><%= user_article.created_at %> </td>
          </tr>
        <% end %>
      </table>"
  end
end