<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<div id="content">
	<h2>게시판글쓰기</h2>
	<form action="" method="post" enctype="multipart/form-data">
		<div id="notice-article-detail" class="article-detail margin-large">
		
			<dl class="article-detail-row">
				<dt class="article-detail-title">구분</dt>
				<dd class="article-detail-data">
					&nbsp;<input name="n_category" />
				</dd>
			</dl>

			<dl class="article-detail-row">
				<dt class="article-detail-title">이미지</dt>
				<dd class="article-detail-data">
					&nbsp;<input type="file" id="txtFile" name="file" />
				</dd>
			</dl>
			
			
			<dl class="article-detail-row">
				<dt class="article-detail-title">내용이미지</dt>
				<dd class="article-detail-data">
					&nbsp;<input type="file" id="txtFile2" name="file2" />
				</dd>
			</dl>
			
			
			<div class="article-content">
				<textarea id="txtContent" class="txtContent" name="n_content"></textarea>
			</div>
			

		</div>
		
		<p class="article-comment margin-small">
			<input class="btn-save button" type="submit" value="저장" /> <a
				class="btn-cancel button" href="notice.htm">취소</a>
		</p>
	</form>
</div>

