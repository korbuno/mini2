<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.list-wrapper {
	width: 270px;
	margin: 0 5px;
	height: 100%;
	box-sizing: border-box;
	display: inline-block;
	vertical-align: top;
	white-space: nowrap;
}

.list-header.is-menu-shown, .list-header.is-subscribe-shown {
	padding-right: 34px;
}

.list-header {
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 auto;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
	padding: 8px 10px;
	position: relative;
	min-height: 18px;
}

.list-header-target {
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0
}

.list-header-name-assist, .list-header-target.is-hidden {
	display: none;
}

h2 {
	font-size: 18px;
	margin: 0 0 9px;
}

h1, h2 {
	line-height: 1.2em;
}

.list-header textarea {
	line-height: 1.2em;
}

textarea.mod-card-back-title, textarea.mod-list-name {
	border: 1px solid transparent;
}

textarea.mod-list-name {
	background: 0 0;
	border-radius: 3px;
	box-shadow: none;
	font-weight: 700;
	margin: -3px -5px;
	height: 18px;
	min-height: 18px;
	padding: 3px 5px;
	resize: none;
	max-height: 16pc;
}
</style>
</head>
<body>
	<div class="js-list list-wrapper">
		<div class="list js-list-content">
			<div class="list-header js-list-header u-clearfix is-menu-shown">
				<div class="list-header-target js-editing-target"></div>
				<h2 class="list-header-name-assist js-list-name-assist" dir="auto">수업중
					소스</h2>
				<textarea class="list-header-name mod-list-name js-list-name-input"
					aria-label="수업중 소스" spellcheck="false" dir="auto" maxlength="512"
					style="overflow: hidden; word-wrap: break-word; height: 24.8px;">수업중 소스</textarea>
				<p class="list-header-num-cards hide js-num-cards">1 card</p>
				<div class="list-header-extras">
					<span class="list-header-extras-subscribe js-list-subscribed hide"><span
						class="icon-sm icon-subscribe"></span></span><a
						class="list-header-extras-menu dark-hover js-open-list-menu"
						href="#"><span class="icon-sm icon-overflow-menu-horizontal"></span></a>
				</div>
			</div>
			<div
				class="list-cards u-fancy-scrollbar u-clearfix js-list-cards js-sortable ui-sortable">
				<a class="list-card js-member-droppable ui-droppable"
					href="/c/J0YFAT1R/50-%EC%8A%A4%ED%94%84%EB%A7%81-di"><div
						class="list-card-cover js-card-cover"></div> <span
					class="icon-sm icon-edit list-card-operation dark-hover js-open-quick-card-editor js-card-menu"></span>
					<div class="list-card-stickers-area hide">
						<div class="stickers js-card-stickers"></div>
					</div>
					<div class="list-card-details">
						<div class="list-card-labels js-card-labels"></div>
						<span class="list-card-title js-card-name" dir="auto"><span
							class="card-short-id hide">#50</span>스프링 DI</span>
						<div class="badges">
							<span class="js-badges"><div class="badge"
									title="Attachments">
									<span class="badge-icon icon-sm icon-attachment"></span><span
										class="badge-text">2</span>
								</div></span><span class="js-plugin-badges"><span></span></span>
						</div>
						<div class="list-card-members js-list-card-members"></div>
					</div>
					<p class="list-card-dropzone">Drop files to upload.</p>
					<p class="list-card-dropzone-limited">Too many attachments.</p></a>
			</div>
			<a class="open-card-composer js-open-card-composer" href="#">Add
				a card…</a>
		</div>
	</div>
</body>
</html>