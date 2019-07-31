<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script src="${path }/outerjs/anime.min.js"
            type="text/javascript"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
        $(function () {
            var path_logo = document.querySelector('.path_logo');
            var path_text = document.querySelector('.path_text');
            var length_logo = path_logo.getTotalLength();
            var length_text = path_text.getTotalLength();
            console.log(length_logo);
            console.log(length_text);
            /*var screenWidth = window.screen.width;
            var screenHeight = window.screen.height;
            $(".mySvg").css("width" , screenWidth);
            $(".mySvg").css("height" , screenHeight);*/
        })
    </script>
    <style type="text/css">
        .mySvg{
            height: 600px;
            width: 800px;
            margin: 0 auto;
            margin-top: 5%;
        }

        .carto{
            height: 100%;
            width: 100%;
        }
        .path_logo {
            stroke-dasharray: 2059.652587890625;
            stroke-dashoffset: 2059.652587890625;
            animation: dash 8s linear alternate infinite;
        }

        /*.path_text {
            stroke-dasharray: 97.72406768798828;
            stroke-dashoffset: 97.72406768798828;
            animation: dash2 8s linear alternate infinite;
        }*/

        @keyframes dash {
            from {
                stroke-dashoffset: 2059.652587890625;
            }
            to {
                stroke-dashoffset: 0;
            }
        }

        /*@keyframes dash2 {
            from {
                stroke-dashoffset: 97.72406768798828;
            }
            to {
                stroke-dashoffset: 0;
            }
        }*/
    </style>
</head>
<body>
<div class="mySvg">
    <svg class="carto" xmlns="http://www.w3.org/2000/svg">
        <!-- Created with Method Draw - http://github.com/duopixel/Method-Draw/ -->
        <defs>
            <filter id="svg_58_blur">
                <feGaussianBlur stdDeviation="0" in="SourceGraphic"/>
            </filter>
        </defs>
        <g class="carto">
            <title>background</title>
            <rect x="-1" y="-1" width="1026" height="770" id="canvas_background" fill="none"/>
        </g>
        <g class="carto">
            <title>logo</title>
            <g stroke="null" filter="url(#svg_58_blur)" opacity="0.79" id="svg_58">
                <path class="path_logo" stroke="#000" id="svg_40" d="m227.110483,113.059406c0,0 55.288338,0 55.288338,0c0,0 0.682571,-53.554459 0.682571,-53.554459c0,0 12.968874,13.223323 12.968874,13.223323c0,0 0,40.331136 0,40.331136c0,0 111.941818,-0.661167 111.941818,-0.661167c0,0 0,-112.39824 0,-112.39824c0,0 12.28629,12.562156 12.28629,11.239823c0,-1.322333 0.682571,101.158417 0.682571,101.158417c0,0 43.002048,1.322322 43.002048,1.322322c0,0 11.603719,11.90099 11.603719,11.90099c0,0 -55.288338,-1.322322 -55.834403,-1.851258c0.546065,0.528936 -0.819077,49.455227 -0.819077,49.455227c0,0 107.163822,0.661167 107.163822,0.661167c0,0 12.28629,11.90099 12.28629,11.90099c0,0 -56.65348,-0.661167 -56.65348,-0.661167c0,0 0,113.720562 0,113.720562c0,0 -10.921148,-10.578656 -10.921148,-10.578656c0,0 0,-103.141905 0,-103.141905c0,0 -51.875484,0.661167 -51.875484,0.661167c0,0 0,172.564343 0,172.564343c0,0 -10.921148,-12.562156 -10.921148,-12.562156c0,0 0,-160.002186 0,-160.002186c0,0 -45.049761,-0.661167 -45.049761,-0.661167c0,0 -9.556006,-11.90099 -10.102084,-12.429925c0.546078,0.528936 55.151845,0.528936 55.151845,0.528936c0,0 -0.682571,-49.587458 -0.682571,-49.587458c0,0 -111.259247,1.9835 -111.259247,1.9835c0,0 -0.682571,112.398228 -0.682571,112.398228c0,0 -11.603732,-9.917489 -11.603732,-9.917489c0,0 -1.365142,-105.125406 -1.365142,-105.125406c-2.730284,3.305834 -42.319464,1.9835 -42.319464,1.9835c0,1.983489 -12.968874,-11.90099 -12.968874,-11.90099l0,0z" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_logo" stroke="#000" id="svg_41" d="m288.663706,265.451929c0,0 -5.049925,4.402394 -5.049925,4.402394c0,0 5.554919,5.869859 5.554919,5.869859c0,0 4.544932,-4.891557 4.544932,-4.891557c0,0 -5.049925,-5.380696 -5.049925,-5.380696l0,0z" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_42" d="m35.755601,431.211764c0,0 -35.755601,33.302184 -35.755601,33.302184c0,0 35.755601,-33.302184 35.755601,-33.302184z" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_43" d="m156.774557,431.877802c0,0 -15.814983,15.31901 -15.814983,15.31901c0,0 15.814983,15.985048 15.814983,15.985048" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_44" d="m179.465597,463.84791c0,0 29.567137,-31.304059 29.567137,-31.304059c0,0 0.687606,29.305922 0.687606,29.305922" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_45" d="m266.104177,463.181861c0,0 -14.439772,-15.31901 -14.439772,-15.31901c0,0 12.376942,-15.985048 12.376942,-15.985048c0,0 -33.005165,0 -33.005165,0c0,0 0,29.971971 0,29.971971" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_46" d="m286.044794,430.545715c0,0 30.254742,0.66605 30.254742,0.66605l-30.254742,-0.66605z" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_47" d="m301.172159,463.84791c0,0 0,-30.638021 0,-30.638021c0,0 0,30.638021 0,30.638021z" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_48" d="m355.493166,431.877802c0,0 -16.502576,14.652961 -16.502576,14.652961c0,0 15.81497,17.317147 15.81497,17.317147c0,0 17.190195,-17.317147 17.190195,-17.317147c0,0 -16.502589,-14.652961 -16.502589,-14.652961l0,0z" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_49" d="m391.248767,431.211764c0,0 1.375211,31.304047 1.375211,31.304047c0,0 31.629967,-31.304047 31.629967,-31.304047" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_50" d="m444.194562,431.877802c0,0 1.375211,30.638009 1.375211,30.638009c0,0 -1.375211,-30.638009 -1.375211,-30.638009z" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_51" d="m479.262558,431.877802c0,0 -8.9389,9.324611 -8.9389,9.324611c0,0 19.253012,17.317136 19.253012,17.317136c0,0 -6.876083,5.994399 -6.876083,5.994399" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_52" d="m517.080976,431.877802c0,0 -0.687606,29.971971 -0.687606,29.971971l0.687606,-29.971971z" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_53" d="m551.461352,431.877802c0,0 -15.127365,15.985048 -15.127365,15.985048c0,0 15.814983,15.31901 15.814983,15.31901c0,0 17.190182,-15.31901 17.190182,-15.31901c0,0 -17.8778,-15.985048 -17.8778,-15.985048z" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_55" d="m589.279783,463.181861c0,0 0,-30.638009 0,-30.638009c0,0 33.005165,32.636146 33.005165,32.636146c0,0 -0.687606,-33.968233 -0.687606,-33.968233" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
                <path class="path_text" stroke="#000" id="svg_56" d="m764.619733,430.545715c0,0 -33.692771,33.302195 -33.692771,33.302195l33.692771,-33.302195z" fill-opacity="null" stroke-opacity="null" stroke-width="4" fill="#fff"/>
            </g>
        </g>
    </svg>
</div>
</body>
</html>