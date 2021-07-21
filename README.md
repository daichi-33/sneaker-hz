# README

# アプリケーション名
スニーカーヘッズ

# アプリケーションの概要
スニーカー情報の共有アプリを作成しました。<br>
このアプリでは、スニーカーに関する投稿とスニーカーの売買ができる機能を実装しました。<br>

# URL
[Sneaker-Hz URL](https://sneaker-hz.herokuapp.com/)

# テスト用アカウント


# 利用方法
ユーザーを新規登録してサービスを利用することができるようになります。スニーカーの購入・紹介等をすることができる投稿機能、

# 目指した課題解決
現在スニーカー情報の共有ツールは数多くありますが、どれもアプリ自体の不特定多数と繋がることができ、情報共有できることを目的にしていると思います。<br>
そこで、自分の周りにもスニーカー好きの友達が多くいることをヒントに、自分の周りのスニーカーを好きな人を対象とし、小規模なコミュニティを作ることができれば<br>
身近で好きなものを通じて交流が広がる環境を構築することができ、面白くなるのではないかと考え、このアプリを作成しました。<br>

# 洗い出した要件
サインイン・ログイン・ログアウト機能、ユーザー詳細機能、写真付投稿機能、投稿編集機能、投稿削除機能、コメント投稿機能、投稿検索機能

# 実装した機能についての画像やGIFおよびその説明について
ユーザー管理機能<br>


# 実装予定の機能
スニーカー出品機能、購入機能、いいね機能、フォロー機能、カレンダー機能

# データベース設計

# ローカルでの動作方法


<div class="contents row">
  <div class="container">
    <h3>新規投稿</h3>
    <%= form_with(model: @sneaker, local: true) do |f| %>
      <%= f.text_field :title, placeholder: "sneaker" %>
      <%= f.file_field :image, placeholder: "sneaker.photo" %>
      <%= f.text_area :detail, placeholder: "text", rows: "10" %>
      <%= f.submit "SEND" %>
    <% end %>
  </div>
</div>

      <% if user_signed_in? %>
        <div id="navbarExampleTransparentExample" class="navbar-menu">
          <div class="navbar-item">
            <%= link_to "スニーカー投稿", new_sneaker_path, class: "navbar-item button is-warning is-light" %>
          </div>
          <div class="navbar-item">
            <%= link_to "投稿一覧", sneakers_path, class: "navbar-item button is-warning is-light" %>
          </div>
          <div class="navbar-end"> 
            <div class="navbar-item">
              <div class="field is-grouped">
                <p class="control">
                  <%= link_to "スニーカーヘッズ一覧", users_path, class: " button is-warning is-light" %>
                </p>
                <p class="control">
                  <%= link_to "マイページ", user_path(current_user), class: "button is-warning is-light" %>
                </p>
                <p class="control">
                  <%= link_to "ログアウト", destroy_user_session_path, method: :delete, class: "button is-warning is-light" %>
                </p>
              </div>
            </div>
          </div> 
        </div>
      <% else %>
        <div id="navbarExampleTransparentExample" class="navbar-menu">
          <div class="navbar-item">
            <%= link_to "スニーカー一覧", sneakers_path, class: "navbar-item button is-warning is-light" %>
          </div>
          <div class="navbar-item">
            <%= link_to "スニーカーヘッズ一覧", users_path, class: "navbar-item button is-warning is-light" %>
          </div>
          <div class="navbar-end">
            <div class="navbar-item">
              <div class="field is-grouped">
                <p class="control">
                  <%= link_to "新規登録", new_user_registration_path, class: "button is-warning is-light" %>
                </p>
                <p class="control">
                  <%= link_to "ログイン", new_user_session_path, class: "button is-warning is-light" %>
                </p>
              </div>
            </div>
          </div>
        </div>
      <% end %>
    </nav>
    <%= yield %>
  </body>
</html>
