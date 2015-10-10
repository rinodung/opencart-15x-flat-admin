<?php echo $header; ?>
<div class="container">
    <?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>

    <div class="row"><?php if( $SPAN[0] ): ?>
        <aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?>">
            <?php echo $column_left; ?>
        </aside>
        <?php endif; ?>

        <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>">
        	<?php require( PAVO_THEME_DIR."/template/common/breadcrumb.tpl" );  ?>
        	<div id="content"><?php echo $content_top; ?>
        <!-- Start Div Content -->
            <div class="pav-header">
                <h1><?php echo $heading_title; ?></h1>
                <a class="rss-wrapper" href="<?php echo $category_rss;?>"><span class="icon-rss">Rss</span></a> 
            </div>  
            <div class="pav-category">
                    <?php if( !empty($children) ) { ?>
                    <div class="pav-children clearfix">
                        <h3><?php echo $objlang->get('text_children');?></h3>
                        <div class="children-wrap row">
                            
                            <?php 
                            $cols = (int)$config->get('children_columns');
                            foreach( $children as $key => $sub )  { $key = $key + 1;?>
                                <div class="pavcol<?php echo $cols;?>">
                                    <div class="children-inner">
                                        <h4>
                                        <a href="<?php echo $sub['link']; ?>" title="<?php echo $sub['title']; ?>"><?php echo $sub['title']; ?> (<?php echo $sub['count_blogs']; ?>)</a> 
                                        
                                        </h4>
                                        <?php if( $sub['thumb'] ) { ?>
                                            <img src="<?php echo $sub['thumb'];?>"/>
                                        <?php } ?>
                                        <div class="sub-description">
                                        <?php echo $sub['description']; ?>
                                        </div>
                                    </div>
                                </div>
                                <?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
                                    <div class="clearfix"></div>
                                <?php } ?>
                            <?php } ?>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="pav-blogs">
                        <?php
                        $cols = $config->get('cat_columns_leading_blog');
                        if( count($leading_blogs) ) { ?>
                            <div class="leading-blogs clearfix">
                                <?php foreach( $leading_blogs as $key => $blog ) { $key = $key + 1;?>
                                <div class="pavcol<?php echo $cols;?>">
                                <?php require( '_item.tpl' ); ?>
                                </div>
                                <?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
                                    <div class="clearfix"></div>
                                <?php } ?>
                                <?php } ?>
                            </div>
                        <?php } ?>

                        <?php
                            $cols = $config->get('cat_columns_secondary_blogs');
                            if ( count($secondary_blogs) ) { ?>
                            <div class="secondary clearfix">
                                
                                <?php foreach( $secondary_blogs as $key => $blog ) {  $key = $key+1; ?>
                                <div class="pavcol<?php echo $cols;?>">
                                <?php require( '_item.tpl' ); ?>
                                </div>
                                <?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
                                    <div class="clearfix"></div>
                                <?php } ?>
                                <?php } ?>
                            </div>
                        <?php } ?>
                        <?php if( $total ) { ?> 
                        <div class="pav-pagination pagination"><?php echo $pagination;?></div>
                        <?php } ?>
                    </div>
            </div>

        <!-- End Div Content -->
        <?php echo $content_bottom; ?></div>
        </section>
        <?php if( $SPAN[2] ): ?>
        <aside id="sidebar-right" class="col-md-<?php echo $SPAN[2];?>">
            <?php echo $column_right; ?>
        </aside>
        <?php endif; ?></div>
</div>
<?php echo $footer; ?>

