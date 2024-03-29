<nav class="sidebar">
    <div class="sidebar-header">
        <a href="#" class="sidebar-brand">
            Realsh<span>ED</span>
        </a>
        <div class="sidebar-toggler not-active">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
    <div class="sidebar-body">
        <ul class="nav">
            <li class="nav-item nav-category">Main</li>
            <li class="nav-item">
                <a href="{{ route('admin.dashboard') }}" class="nav-link">
                    <i class="link-icon" data-feather="box"></i>
                    <span class="link-title">Dashboard</span>
                </a>
            </li>
            <li class="nav-item nav-category">Realshed</li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#emails" role="button" aria-expanded="false" aria-controls="emails">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">Property Type</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="emails">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.type') }}" class="nav-link">All Property</a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/email/read.html" class="nav-link">Add Property</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#amenities" role="button" aria-expanded="false" aria-controls="emails">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">Amenities</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="amenities">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.amenities') }}" class="nav-link">All Amenities</a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/email/read.html" class="nav-link">Add Amenities</a>
                        </li>
                    </ul>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#property" role="button" aria-expanded="false" aria-controls="emails">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">Property</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="property">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.property') }}" class="nav-link">All Property</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('add.property') }}" class="nav-link">Add Property</a>
                        </li>
                    </ul>
                </div>
            </li>


            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#place" role="button" aria-expanded="false" aria-controls="emails">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">PLACES</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="place">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.place') }}" class="nav-link">All Place</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('add.place') }}" class="nav-link">Add Place</a>
                        </li>
                    </ul>
                </div>
            </li>


            <li class="nav-item">
                <a href="pages/apps/chat.html" class="nav-link">
                    <i class="link-icon" data-feather="message-square"></i>
                    <span class="link-title">Chat</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ route('admin.package.history') }}" class="nav-link">
                    <i class="link-icon" data-feather="calendar"></i>
                    <span class="link-title">Package History</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#testimonials" role="button" aria-expanded="false" aria-controls="emails">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">Testimonials Manage </span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="testimonials">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.testimonials') }}" class="nav-link">All Testimonials</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('add.testimonials') }}" class="nav-link">Add Testimonials</a>
                        </li>

                    </ul>
                </div>
            </li>

            <li class="nav-item nav-category">User All Function</li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#uiComponents" role="button" aria-expanded="false" aria-controls="uiComponents">
                    <i class="link-icon" data-feather="feather"></i>
                    <span class="link-title">Manage Agent</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="uiComponents">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.agent') }}" class="nav-link">All Agent</a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/ui-components/alerts.html" class="nav-link">Add Agent</a>
                        </li>

                    </ul>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#blogcategoy" role="button" aria-expanded="false" aria-controls="uiComponents">
                    <i class="link-icon" data-feather="feather"></i>
                    <span class="link-title">Blog Category</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="blogcategoy">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.blog.category') }}" class="nav-link">Blog Category</a>
                        </li>
                    </ul>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#post" role="button" aria-expanded="false" aria-controls="uiComponents">
                    <i class="link-icon" data-feather="feather"></i>
                    <span class="link-title">Post</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="post">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.post') }}" class="nav-link">All Blog Post</a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('add.post') }}" class="nav-link">Add Post</a>
                        </li>
                    </ul>
                </div>
            </li>


            <li class="nav-item">
                <a href="{{ route('admin.blog.comment') }}" class="nav-link">
                  <i class="link-icon" data-feather="calendar"></i>
                  <span class="link-title">Blog Comment </span>
                </a>
            </li>

            <li class="nav-item">
                <a href="{{ route('smtp.settings') }}" class="nav-link">
                  <i class="link-icon" data-feather="calendar"></i>
                  <span class="link-title">SMTP Settings </span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#advancedUI" role="button" aria-expanded="false" aria-controls="advancedUI">
                    <i class="link-icon" data-feather="anchor"></i>
                    <span class="link-title">Advanced UI</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="advancedUI">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="pages/advanced-ui/cropper.html" class="nav-link">Cropper</a>
                        </li>
                        <li class="nav-item">
                            <a href="pages/advanced-ui/owl-carousel.html" class="nav-link">Owl carousel</a>
                        </li>

                    </ul>
                </div>
            </li>








            <li class="nav-item nav-category">Docs</li>
            <li class="nav-item">
                <a href="https://www.nobleui.com/html/documentation/docs.html" target="_blank" class="nav-link">
                    <i class="link-icon" data-feather="hash"></i>
                    <span class="link-title">Documentation</span>
                </a>
            </li>
        </ul>
    </div>
</nav>
