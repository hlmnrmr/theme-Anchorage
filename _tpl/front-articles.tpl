                                <!-- Begins Index Articles -->

                                {{ list_playlist_articles name="Front page" length="4" }}   
                                {{ if $gimme->current_list->at_beginning }}
                                <article class="articles featured-article">
                                    {{ include file='_tpl/img/img_720x310.tpl'}}
                                    <header>
                                        <h2><a href="{{ uri option='article'}}">{{ $gimme->article->name }}</a>
                                    {{ if !$gimme->article->is_public }}
                                    <span class="label label-important"><i class="icon-lock"></i>&nbsp;{{ #premium# }}</span>
                                    {{ /if }} 
                                    </h2>
                                    </header>
                                    <div class="excerpt">
                                        {{ $gimme->article->full_text|truncate:300:"...":true }}
                                    </div>
                                    <div class="article-links pull-right">
                                        <a href="{{ uri option='article'}}" class="btn btn-mini articles-button read-more"><i class="icon-double-angle-right"></i>{{ #readMore# }}</a>
                                        <a href="{{ uri option='article'}}#comments-block" class="btn btn-mini articles-button comment-link"><i class="icon-double-angle-right"></i> {{ #comments# }}&nbsp;({{ $gimme->article->comment_count }})</a>
                                    </div>
                                    <div class="clearfix"></div>
                                </article>
                                <h4 class="section-title">{{ #latestArticles# }}</h4>
                                <div class="clearfix"></div>
                                {{else}}
                                <article class="articles articles-list">
                                    {{ include file='_tpl/img/img_110x100.tpl'}}
                                    <header class="pull-right">
                                        <h2>
                                            <a class="dateline" href="{{ uri options='section' }}">{{ $gimme->article->section->name}}: </a>
                                            <a href="{{ uri option='article'}}">{{ $gimme->article->name }}</a>
                                            {{ if !$gimme->article->is_public }} <span class="label label-important"><i class="icon-lock"></i>&nbsp;{{ #premium# }}</span> {{ /if }} 
                                        </h2>
                                    </header>
                                    <div class="excerpt pull-right">
                                        {{ $gimme->article->full_text|truncate:150:"...":true }}
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="article-links pull-right">
                                        <a href="{{ uri option='article'}}" class="btn btn-mini articles-button read-more"><i class="icon-double-angle-right"></i>{{ #readMore# }}</a>
                                        <a href="{{ uri option='article'}}#comments-block" class="btn btn-mini articles-button comment-link"><i class="icon-double-angle-right"></i> {{ #comments# }}&nbsp;({{ $gimme->article->comment_count }})</a>
                                    </div>
                                    <div class="clearfix"></div>
                                </article>
                                <div class="clearfix"></div>
                                {{/if}}
                                {{ /list_playlist_articles }}
                                <!-- / End Index Articles -->
