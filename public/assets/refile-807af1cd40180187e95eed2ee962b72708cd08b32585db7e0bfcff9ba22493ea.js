!function(){"use strict";function e(e){return e.status>=200&&e.status<300||304===e.status}function t(e,t,n){var r=new FormData;return n&&Object.keys(n).forEach(function(e){r.append(e,n[e])}),r.append(e,t),r}document.addEventListener&&document.addEventListener("change",function(n){var r=n.target;if("INPUT"===r.tagName&&"file"===r.type&&r.getAttribute("data-direct")){if(!r.files)return;var a=r.getAttribute("data-reference"),i=document.querySelector("input[type=hidden][data-reference='"+a+"']"),s=r.getAttribute("data-url"),o=JSON.parse(r.getAttribute("data-fields")||"null"),u=[].map.call(r.files,function(n,a){function i(e,t,r){var i=document.createEvent("CustomEvent");i.initCustomEvent(t,!0,!1,{xhr:l,file:n,index:a,progress:r}),e.dispatchEvent(i)}var l=new XMLHttpRequest;if(l.file=n,l.addEventListener("load",function(){l.complete=!0,u.every(function(e){return e.complete})&&p(),e(l)?i(r,"upload:success"):i(r,"upload:failure"),i(r,"upload:complete")}),l.upload.addEventListener("progress",function(e){i(r,"upload:progress",e)}),r.getAttribute("data-presigned")){i(r,"presign:start");var d=new XMLHttpRequest,c=s+"?t="+Date.now()+"."+a;d.addEventListener("load",function(){if(i(r,"presign:complete"),e(d)){i(r,"presign:success");var a=JSON.parse(d.responseText);l.id=a.id,l.open("POST",a.url,!0),l.send(t(a.as,n,a.fields)),i(r,"upload:start")}else i(r,"presign:failure"),l.complete=!0}),d.open("GET",c,!0),d.send()}else l.open("POST",s,!0),l.send(t(r.getAttribute("data-as"),n,o)),i(r,"upload:start");return l});u.length&&r.classList.add("uploading");var p=function(){if(r.classList.remove("uploading"),u.every(e)){var t=u.map(function(e){var t=e.id||JSON.parse(e.responseText).id;return{id:t,filename:e.file.name,content_type:e.file.type,size:e.file.size}});r.multiple||(t=t[0]),i&&(i.value=JSON.stringify(t)),r.removeAttribute("name")}}}})}();