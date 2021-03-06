/*!
 * @author ...
 * @description hmall 肄붿뼱 �쇱씠釉뚮윭由�
 */
;(function(global, $, undefined){
    "use strict";
    // 湲곕낯 �댁긽�� 遺꾧린
    var DEFAULT_SCREEN_SIZE = [
        {
            mode: 'mobile',
            min: 0,
            max: 767
        },
        {
            mode: 'tablet',
            min: 768,
            max: 1024
        },
        {
            mode: 'web',
            min: 1025,
            max: 3840
        }
    ];
    global.LIB_NAME = 'UI';
    var LIB_NAME = global.LIB_NAME || 'UI',
        doc = global.document,
        extend = $.extend,
        proxy = $.proxy,
        $win = $(window),
        arrayProto = Array.prototype,
        objectProto = Object.prototype,
        objectString = objectProto.toString,
        hasOwn = objectProto.hasOwnProperty,
        arraySlice = arrayProto.slice,
        FUNCTION = "function",
        STRING = "string",
        NUMBER = "number",
        OBJECT = "object",
        NULL = "null",
        BOOLEAN = "boolean",
        UNDEFINED = "undefined",
        slice = [].slice,
        tmpInput = doc.createElement('input'),
        supportPlaceholder = ('placeholder' in tmpInput),
        isMobile = ('orientation' in global) || global.IS_MOBILE === true;
    if (global[LIB_NAME]) return;
	var core = global[LIB_NAME] || (global[LIB_NAME] = {});
    function Class() {}
    function isArray(it) {
        return objectString.call(it) === '[object Array]';
    }
    if(!String.prototype.replaceAll){
        String.prototype.replaceAll = function(org, dest) {
            return this.split(org).join(dest);
        }
    }
    Class.extend = function(proto) {
        var base = function() {},
            member,
            _ = this,
            subclass = proto && proto.init ? proto.init : function () {
                _.apply(this, arguments);
            },
            fn;

        base.prototype = _.prototype;
        fn = subclass.fn = subclass.prototype = new base();

        for (member in proto) {
            if (proto[member] != null && proto[member].constructor === Object) {
                // Merge object members
                fn[member] = extend(true, {}, base.prototype[member], proto[member]);
            } else {
                fn[member] = proto[member];
            }
        }

        fn.constructor = subclass;
        subclass.extend = _.extend;

        return subclass;
    };

    Date.prototype.format = function (f) {
        if (!this.valueOf()) return " ";
        var weekKorName = ["�쇱슂��", "�붿슂��", "�붿슂��", "�섏슂��", "紐⑹슂��", "湲덉슂��", "�좎슂��"];
        var weekKorShortName = ["��", "��", "��", "��", "紐�", "湲�", "��"];
        var weekEngName = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
        var weekEngShortName = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
        var d = this;

        return f.replace(/(yyyy|yy|MM|dd|KS|KL|ES|EL|HH|hh|mm|ss|a\/p)/gi, function ($1) {
            switch ($1) {
                case "yyyy": return d.getFullYear(); // �� (4�먮━)
                case "yy": return (d.getFullYear() % 1000).zf(2); // �� (2�먮━)
                case "MM": return (d.getMonth() + 1).zf(2); // �� (2�먮━)
                case "dd": return d.getDate().zf(2); // �� (2�먮━)
                case "KS": return weekKorShortName[d.getDay()]; // �붿씪 (吏㏃� �쒓�)
                case "KL": return weekKorName[d.getDay()]; // �붿씪 (湲� �쒓�)
                case "ES": return weekEngShortName[d.getDay()]; // �붿씪 (吏㏃� �곸뼱)
                case "EL": return weekEngName[d.getDay()]; // �붿씪 (湲� �곸뼱)
                case "HH": return d.getHours().zf(2); // �쒓컙 (24�쒓컙 湲곗�, 2�먮━)
                case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2); // �쒓컙 (12�쒓컙 湲곗�, 2�먮━)
                case "mm": return d.getMinutes().zf(2); // 遺� (2�먮━)
                case "ss": return d.getSeconds().zf(2); // 珥� (2�먮━)
                case "a/p": return d.getHours() < 12 ? "�ㅼ쟾" : "�ㅽ썑"; // �ㅼ쟾/�ㅽ썑 援щ텇
                default: return $1;
            }
        });
    };
    String.prototype.string = function (len) { var s = '', i = 0; while (i++ < len) { s += this; } return s; };
    String.prototype.zf = function (len) { return "0".string(len - this.length) + this; };
    Number.prototype.toTimeFormat = function (f) {
        var myNum = parseInt(this, 10),
            hours   = Math.floor(myNum / 3600),
            minutes = Math.floor((myNum - (hours * 3600)) / 60),
            seconds = myNum - (hours * 3600) - (minutes * 60);
    
        if (hours   < 10) {hours   = "0"+hours;}
        if (minutes < 10) {minutes = "0"+minutes;}
        if (seconds < 10) {seconds = "0"+seconds;}
        return f.replace(/(hh|mm|ss|a\/p)/gi, function ($1) {
            switch ($1) {
                case "hh": return hours;
                case "mm": return minutes;
                case "ss": return seconds;
                default: return $1;
            }
        });
    }
    Number.prototype.zf = function (len) { return this.toString().zf(len); };
    /**
     * core �섏쐞�� name�� �대떦�섎뒗 �ㅼ엫�ㅽ럹�댁뒪瑜� �앹꽦�섏뿬 object瑜� �ㅼ젙�댁＜�� �⑥닔
     *
     * @function
     * @name ui.addon
     *
     * @param {string} name .瑜� 援щ텇�먮줈 �댁꽌 core�� �쒖옉�쇰줈 �섏쐞 �ㅼ엫�ㅽ럹�댁뒪瑜� �앹꽦. name�� �놁쑝硫� core�� 異붽��쒕떎.
     * @param {Object|Function} obj
     *
     * @example
     * vcui.addon('urls', {
     *    store: 'Store',
     *    company: 'Company'
     * });
     */
    var addon = function (name, object, isExecFn) {
        if (typeof name !== 'string') {
            object = name;
            name = '';
        }

        var root = core,
            names = name ? name.split('.') : [],
            ln = names.length - 1,
            leaf = names[ln];

        if (isExecFn !== false && typeof object === 'function' && !hasOwn.call(object, 'superClass')) {
            object = object.call(root);
        }

        for (var i = 0; i < ln; i++) {
            root = root[names[i]] || (root[names[i]] = {});
        }

        return (leaf && (root[leaf] ? extend(root[leaf], object) : (root[leaf] = object))) || extend(root, object), object;
    },
    _bindType = function (name) {
        return function (val) {
            return isType(val, name);
        };
    },
    isType = function (value, typeName) {
        var isGet = arguments.length === 1;

        function result(name) {
            return isGet ? name : typeName === name;
        }

        if (value === null) {
            return result('null');
        }

        if (typeof value === undefined) {
            return 'undefined'
        }

        if (value && value.nodeType) {
            if (value.nodeType === 1 || value.nodeType === 9) {
                return result('element');
            } else if (value && value.nodeType === 3 && value.nodeName === '#text') {
                return result('textnode');
            }
        }

        if (typeName === 'object' || typeName === 'json') {
            return isGet ? 'object' : isPlainObject(value);
        }

        var s = toString.call(value),
            type = s.match(/\[object (.*?)\]/)[1].toLowerCase();

        if (type === 'number') {
            if (isNaN(value)) {
                return result('nan');
            }
            if (!isFinite(value)) {
                return result('infinity');
            }
            return result('number');
        }

        return isGet ? type : type === typeName;
    },
    each = function (obj, iterater, ctx) {
        if (!obj) {
            return obj;
        }
        var i = 0,
            len = 0,
            isArr = isArray(obj);

        if (isArr) {
            // 諛곗뿴
            for (i = 0, len = obj.length; i < len; i++) {
                if (iterater.call(ctx || obj, obj[i], i, obj) === false) {
                    break;
                }
            }
        } else {
            // 媛앹껜泥�
            for (i in obj) {
                if (hasOwn.call(obj, i)) {
                    if (iterater.call(ctx || obj, obj[i], i, obj) === false) {
                        break;
                    }
                }
            }
        }
        return obj;
    },

    /**
     * @readonly
     * @name core.detect
     * @enum {*}
     * @property {boolean} mediaInfo // �꾩옱 �댁긽�꾨퀎 援щ텇 媛앹껜
     * @property {boolean} isTouch // �곗튂�붾컮�댁뒪 �щ�
     * @property {boolean} isRetina // �덊떚�� �щ�
     * @property {boolean} isMobile // orientation �묐룞�щ�濡� �먮떒
     * @property {boolean} isMac // 留쩙S
     * @property {boolean} isLinux // 由щ늼��
     * @property {boolean} isWin // �덈룄�곗쫰
     * @property {boolean} is64Bit // 64鍮꾪듃 �뚮옯��
     * @property {boolean} isIE // IE
     * @property {boolean} ieVersion // IE�� 踰꾩쟾
     * @property {boolean} isOpera // �ㅽ럹��
     * @property {boolean} isChrome // �щ＼
     * @property {boolean} isSafari // �ы뙆由�
     * @property {boolean} isWebKit // �뱁궥
     * @property {boolean} isGecko // �뚯씠�댄룺��
     * @property {boolean} isIETri4 // IE�붿쭊
     * @property {boolean} isAir // �대룄鍮� �먯뼱
     * @property {boolean} isIOS // �꾩씠��, �꾩씠�⑤뱶
     * @property {boolean} isAndroid // �덈뱶濡쒖씠��
     * @property {number} iosVersion // ios 踰꾩쟾 : [8, 1, 0] -> [major, minor, revision]
     * @property {number} androidVersion // android 踰꾩쟾 : [4, 1, 0] -> [major, minor, revision]
     * @example
     * if(core.browser.isIE && core.browser.isVersion < 9) {
     *     alert('援щ쾭�꾩쓣 �ъ슜�섍퀬 �덉뒿�덈떎.');
     * }
     */
    detect = (function() {
        var detect = {},
            win = global,
            na = win.navigator,
            ua = na.userAgent,
            lua = ua.toLowerCase(),
            match;
        detect.mediaInfo = function(){};
        detect.mediaInfo.mode = null;
        detect.sizes = DEFAULT_SCREEN_SIZE;
        detect.placeholder = supportPlaceholder;
        detect.isStrict = (typeof global == 'undefined');

        detect.isRetina = 'devicePixelRatio' in global && global.devicePixelRatio > 1;
        detect.isAndroid = lua.indexOf('android') !== -1;
        detect.isBadAndroid = /Android /.test(na.appVersion) && !(/Chrome\/\d/.test(na.appVersion));
        detect.isOpera = !!(win.opera && win.opera.buildNumber);
        detect.isWebKit = /WebKit/.test(ua);
        detect.isTouch = !!('ontouchstart' in global);
        detect.isMobileDevice = ('ontouchstart' in win) || win.DocumentTouch && document instanceof DocumentTouch || na.msMaxTouchPoints || false;

        match = /(msie) ([\w.]+)/.exec(lua) || /(trident)(?:.*rv.?([\w.]+))?/.exec(lua) || ['', null, -1];
        detect.isIE = !detect.isWebKit && !detect.isOpera && match[1] !== null;
        detect.version = detect.ieVersion = parseInt(match[2], 10);
        detect.isOldIE = detect.isIE && detect.version < 9;

        detect.isWin = (na.appVersion.indexOf("Win") != -1);
        detect.isMac = (ua.indexOf('Mac') !== -1);
        detect.isLinux = (na.appVersion.indexOf("Linux") != -1);
        detect.is64Bit = (lua.indexOf('wow64') > -1 || (na.platform === 'Win64' && lua.indexOf('x64') > -1));

        detect.isChrome = (ua.indexOf('Chrome') !== -1);
        detect.isGecko = (ua.indexOf('Firefox') !== -1);
        detect.isAir = ((/adobeair/i).test(ua));
        detect.isIOS = /(iPad|iPhone)/.test(ua);
        detect.isSafari = !detect.isChrome && (/Safari/).test(ua);
        detect.isIETri4 = (detect.isIE && ua.indexOf('Trident/4.0') !== -1);
        detect.isGalaxy = (ua.indexOf(' SHV-') !== -1);

        detect.msPointer = !!(na.msPointerEnabled && na.msMaxTouchPoints && !win.PointerEvent);
        detect.pointer = !!((win.PointerEvent && na.pointerEnabled && na.maxTouchPoints) || detect.msPointer);

        // �� 耳��댁뒪 異붽�
        detect.isApp = (win.appYn !== undefined) ? win.appYn : null;
        detect.isAppType = (win.appOpsyNm !== undefined ) ? win.appOpsyNm : null;

        if (detect.isAndroid) {
            detect.androidVersion = function() {
                var v = ua.match(/[a|A]ndroid[^\d]*(\d+).?(\d+)?.?(\d+)?/);
                if (!v) {
                    return -1;
                }
                return [parseInt(v[1] | 0, 10), parseInt(v[2] | 0, 10), parseInt(v[3] | 0, 10)];
            }();
        } else if (detect.isIOS) {
            detect.iosVersion = function() {
                var v = ua.match(/OS (\d+)_?(\d+)?_?(\d+)?/);
                return [parseInt(v[1] | 0, 10), parseInt(v[2] | 0, 10), parseInt(v[3] | 0, 10)];
            }();
        }

        detect.isMobile = isMobile || detect.isIOS || detect.isAndroid;
        
        return detect;
    }()),
    transitionEnd = function() {
        var el = document.createElement('div')
    
        var transEndEventNames = {
            WebkitTransition : 'webkitTransitionEnd',
            MozTransition    : 'transitionend',
            OTransition      : 'oTransitionEnd otransitionend',
            transition       : 'transitionend'
        }
    
        for (var name in transEndEventNames) {
            if (el.style[name] !== undefined) {
                return { end: transEndEventNames[name] }
            }
        }
    
        return false
    };

    extend(core, {
        name: LIB_NAME,
        DEFAULT_SCREEN_SIZE : DEFAULT_SCREEN_SIZE,
        version: '0.7.0',
        noop: function() {},
        emptyFn: function() {},
        widgets : core.widgets || [],
        _widgetRegisteredCallbacks: [],
        ui : core.ui || {},
        Class : Class,
        addon : addon,
        detect : detect,
        prefix : '.hui',
        transitionEnd : transitionEnd,
        each : each,
        isType : isType,
        isArray: _bindType('array'),
        userScreenControl : false   // �ъ슜�� �붾㈃ 議곗옉以� 泥댄겕, �꾩뿭
    });
    extend($.fn, {
        handler: function(handler) {
            this.data("handler", handler);
            return this;
        },
        emulateTransitionEnd : function (duration) {
            var called = false
            var $el = this
            $(this).one('bsTransitionEnd', function () { called = true })
            var callback = function () { if (!called) $($el).trigger($.support.transition.end);}
            setTimeout(callback, duration);
            return this;
        },
        /**
         * �대옒�� 移섑솚
         * @function
         * @name $#replaceClass
         * @param {string} old ���곹겢�섏뒪
         * @param {string} newCls 移섑솚�대옒��
         * @return {jQuery}
         */
        replaceClass : function (old, newCls) {
            return this.each(function () {
                $(this).removeClass(old).addClass(newCls);
            });
        },
        /**
         * 媛숈� �덈꺼�� �덈뒗 �ㅻⅨ row�먯꽌 on瑜� �쒓굅�섍퀬 �꾩옱 row�� on 異붽�
         * @function
         * @name $#activeItem
         * @param {string} className='on' �쒖꽦 �대옒�ㅻ챸
         * @return {jQuery}
         */
        activeItem : function (className, isActive) {
            className = className || 'on';
            if (typeof isActive === 'undefined') {
                isActive = true;
            }
            return this.toggleClass(className, isActive).siblings().toggleClass(className, !isActive).end();
        },
        /**
         * �대떦 �대�吏�媛� 濡쒕뱶�먯쓣 �� 肄쒕갚�⑥닔 �ㅽ뻾
         * @function
         * @name $#onImgLoaded
         * @param {function(width:Number, height:Number)} callback width, height �몄옄瑜� 媛뽯뒗 肄쒕갚�⑥닔
         * @return {jQuery}
         */
        onImgLoaded : function (callback) {
            core.util.waitImageLoad(this).done(callback);
            return this;
        },

        /**
         * 鍮꾨룞湲� 諛⑹떇�쇰줈 �대�吏� �ъ씠利덈� 怨꾩궛�댁꽌 肄쒕갚�⑥닔濡� �섍꺼以���.
         * @function
         * @name $#getImgSize
         * @param {function(width:Number, height:Number)} cb width, height �몄옄瑜� 媛뽯뒗 肄쒕갚�⑥닔
         * @return {jQuery}
         */
        getImgSize : function (cb) {
            var $img = this.eq(0);
            $img.onImgLoaded(function () {
                cb && cb.call($img[0], $img.css('width', '').width(), $img.css('height', '').height());
            });
            return this;
        }
    });
    var Observable = Class.extend({
        init: function() {
            this._events = {};
        },

        bind: function(eventName, handlers, one) {
            var _ = this,
                idx,
                eventNames = typeof eventName === STRING ? [eventName] : eventName,
                length,
                original,
                handler,
                handlersIsFunction = typeof handlers === FUNCTION,
                events;

            if (handlers === undefined) {
                for (idx in eventName) {
                    _.bind(idx, eventName[idx]);
                }
                return _;
            }

            for (idx = 0, length = eventNames.length; idx < length; idx++) {
                eventName = eventNames[idx];

                handler = handlersIsFunction ? handlers : handlers[eventName];

                if (handler) {
                    if (one) {
                        original = handler;
                        handler = function() {
                            _.unbind(eventName, handler);
                            original.apply(_, arguments);
                        };
                        handler.original = original;
                    }
                    events = _._events[eventName] = _._events[eventName] || [];
                    events.push(handler);
                }
            }

            return _;
        },

        one: function(eventNames, handlers) {
            return this.bind(eventNames, handlers, true);
        },

        first: function(eventName, handlers) {
            var _ = this,
                idx,
                eventNames = typeof eventName === STRING ? [eventName] : eventName,
                length,
                handler,
                handlersIsFunction = typeof handlers === FUNCTION,
                events;

            for (idx = 0, length = eventNames.length; idx < length; idx++) {
                eventName = eventNames[idx];

                handler = handlersIsFunction ? handlers : handlers[eventName];

                if (handler) {
                    events = _._events[eventName] = _._events[eventName] || [];
                    events.unshift(handler);
                }
            }

            return _;
        },

        trigger: function(eventName, e) {
            var _ = this,
                events = _._events[eventName],
                idx,
                length;

            if (events) {
                e = e || {};

                e.sender = _;

                e._defaultPrevented = false;

                e.preventDefault = preventDefault;

                e.isDefaultPrevented = isDefaultPrevented;

                events = events.slice();

                for (idx = 0, length = events.length; idx < length; idx++) {
                    events[idx].call(_, e);
                }

                return e._defaultPrevented === true;
            }

            return false;
        },

        unbind: function(eventName, handler) {
            var _ = this,
                events = _._events[eventName],
                idx;

            if (eventName === undefined) {
                _._events = {};
            } else if (events) {
                if (handler) {
                    for (idx = events.length - 1; idx >= 0; idx--) {
                        if (events[idx] === handler || events[idx].original === handler) {
                            events.splice(idx, 1);
                        }
                    }
                } else {
                    _._events[eventName] = [];
                }
            }

            return _;
        }
    });

    var Widget = Observable.extend( {
        init: function(element, options) {
            var _ = this;
            _.element = $(element).handler(_);
            
            Observable.fn.init.call(_);

            var dataSource = options ? options.dataSource : null;
            var props;

            if (options) {
                props = (_.componentTypes || {})[(options || {}).componentType];
            }
            if (dataSource) {
                // avoid deep cloning the data source
                options = extend({}, options, { dataSource: {} });
            }

            options = _.options = extend(true, {}, _.options, _.defaults, props || {}, options);

            if (dataSource) {
                options.dataSource = dataSource;
            }

            _.element.data(options.name, _);

            _.bind(_.events, options);
        },

        events: [],

        options: {
            prefix: ""
        },

        _hasBindingTarget: function() {
            return !!this.element[0].bindingTarget;
        },

        _tabindex: function(target) {
            target = target || this.wrapper;

            var element = this.element,
                TABINDEX = "tabindex",
                tabindex = target.attr(TABINDEX) || element.attr(TABINDEX);

            element.removeAttr(TABINDEX);

            target.attr(TABINDEX, !isNaN(tabindex) ? tabindex : 0);
        },

        setOptions: function(options) {
            this._setEvents(options);
            $.extend(this.options, options);
        },

        _setEvents: function(options) {
            var _ = this,
                idx = 0,
                length = _.events.length,
                e;

            for (; idx < length; idx ++) {
                e = _.events[idx];
                if (_.options[e] && options[e]) {
                    _.unbind(e, _.options[e]);
                    if (_._events && _._events[e]) {
                        delete _._events[e];
                    }
                }
            }

            _.bind(_.events, options);
        },

        resize: function(force) {
            console.log(0)
            var size = this.getSize(),
                currentSize = this._size;
                
            if (force || (size.width > 0 || size.height > 0) && (!currentSize || size.width !== currentSize.width || size.height !== currentSize.height)) {
                this._size = size;
                this._resize(size, force);
                this.trigger("resize", size);
            }
        },

        getSize: function() {
            return core.dimensions(this.element);
        },

        size: function(size) {
            if (!size) {
                return this.getSize();
            } else {
                this.setSize(size);
            }
        },

        setSize: $.noop,
        _resize: $.noop,

        destroy: function() {
            var _ = this;

            _.element.removeData(_.options.prefix + _.options.name);
            _.element.removeData("handler");
            _.unbind();
        },
        _destroy: function() {
            this.destroy();
        }
    });
    extend(core.ui, {
        Widget: Widget,
        Observable : Observable,
        roles: {},
        plugin: function(widget, register, prefix) {
            var name = widget.fn.name;
            register = register || core.ui;
            prefix = prefix || "";
            register[name] = widget;

            register.roles[name.toLowerCase()] = widget;
            var widgetEntry = { name: name, widget: widget, prefix: prefix || "" };
            core.widgets.push(widgetEntry);
            for (var i = 0, len = core._widgetRegisteredCallbacks.length; i < len; i++) {
                core._widgetRegisteredCallbacks[i](widgetEntry);
            }

            $.fn[name] = function(options) {
                var value = this,
                    args;
                if (typeof options === STRING) {
                    this.each(function(){
                        var widget = $.data(this, name),
                            method,
                            result;
                        method = widget[options];
                        result = method.apply(widget, args);
                    });
                } else {
                    this.each(function() {
                        var $this = $(this)
                        var data  = $this.data(name)
                        if (!data) $this.data(name, (data = new widget(this, options)))
                    });
                }
                return value.data(name);
            };
            $.fn[name].Constructor = widget;
        },
        getNext : function(el, className){
            var checkTarget,
                loop = true,
                checkElement = el,
                checkClass = className;
            do {
                if(checkElement.localName == "body"){
                    // throw new Error(checkClass + "�대옒�ㅻ� 李얠� 紐삵븯���듬땲��");
                    return null;
                }
                checkTarget = checkElement.nextElementSibling;
                if(checkTarget && checkTarget.classList.contains(checkClass)){
                    loop = false;
                }else{
                    checkElement = checkElement.parentNode;
                }
            } while (loop);
            return {
                el : checkElement,
                trigger : checkTarget
            }; 
        },
        /**
         * �� �앹꽦
         * @param STRING
         */
        showDim : function(target){
            var root = $('body'),
                targetName = target || '',
                dim = $('<div id="bgDim" class="cm-dim">');
            if(target) dim.attr('data-call-fn', targetName)
            root.append(dim);
            setTimeout(function() {
                dim.addClass('hidden');
				root.addClass('hidden');
            }, 0)
        },
        /**
         * �� �쒓굅
         * @param $el
         */
		hideDim : function(){
			var root = $('body');
			root.removeClass('hidden');
            setTimeout(function() {
                $('#bgDim').remove();
            }, 0)
        },
        /**
         * �ㅽ겕濡ㅼ씠踰ㅽ듃 臾댄슚��
         * @param $el
         */
        disableScroll: function ($el) {
            $el = $el || $win;

            var scrollTop = $el.scrollTop();
            $el.on("scroll.disableScroll mousewheel.disableScroll DOMMouseScroll.disableScroll touchmove.disableScroll", function (event) {
                event.preventDefault();
                $el.scrollTop(scrollTop);
            });
        },

        /**
         * �ㅽ겕濡ㅼ씠踰ㅽ듃 臾댄슚�� 痍⑥냼
         * @param $el
         */
        enableScroll: function ($el) {
            $el = $el || $win;

            $el.off(".disableScroll");
        },
        /**
         * 紐⑤뱢 由ы봽�덉돩
         * @param $el
         */
        modulesRefresh : function(el){
            var wrap = el;
            setTimeout(function(){  
                if( wrap.find('[data-modules-moreview]').length > 0 ){
                    wrap.find('[data-modules-moreview]').moreview('create');
                }
                if(wrap.find('[data-modules-cascadingGrid]').length !== 0){
                    wrap.find('[data-modules-cascadingGrid]').cascadingGrid('mount')
                }

                if(wrap.find('[data-modules-slick]').length !== 0){
                    wrap.find('[data-modules-slick]').slick('setPosition');
                }
                if(wrap.find('[data-modules-sticky]').length !== 0){
                    wrap.find('[data-modules-sticky]').sticky('posRefresh');
                }
            }, 0)
        }

        
    });
})(window, jQuery);

/**
 * @util �좏떥�⑥닔 紐⑥쓬
 */
;(function(core, $, undefined){
    "use strict";
    var ampRegExp = /&/g,
        ltRegExp = /</g,
        quoteRegExp = /"/g,
        aposRegExp = /'/g,
        gtRegExp = />/g;
    core.addon('util', /** @lends UI.util */{
        /**
         * @param  {str} 臾몄옄�댁쓣 JSON�뺤떇�� �곗씠�곕줈 移섑솚
         */
        stringToObject : function (str){
            if (typeof str === "object") return str;
            var str = str.replace(/\s/g, '');
            var obj;
            obj = JSON.parse(str);
            return obj;
        },
        /**
         * @param  {value} html �몄퐫��
         */
        htmlEncode : function (value) {
            return ("" + value).replace(ampRegExp, "&amp;").replace(ltRegExp, "&lt;").replace(gtRegExp, "&gt;").replace(quoteRegExp, "&quot;").replace(aposRegExp, "&#39;");
        },
        /**
         * 
         * @param {object} element 硫댁쟻�� 援ы븷 �섎━癒쇳듃
         * @param {*} dimensions 
         */
        dimensions : function(element, dimensions) {
            var domElement = element[0];
        
            if (dimensions) {
                element.css(dimensions);
            }
        
            return { width: domElement.offsetWidth, height: domElement.offsetHeight };
        },
        /**
         * 
         * @param {string} str css 由ы꽣�대Ц�먯뿴
         */
        cssLiteralToObject : function(str){
            var strValue = str, arr = strValue.split(';'), i = arr.length-1, obj = {},objArr,objFirst,objLast,objName,objProp,arrFirst,arrLast,firstStr, lastStr;
            for ( ; i >= 0; i--) {
                if(arr[i] !== ""){
                    
                    if( arr[i].indexOf('{') !== -1 || arr[i].indexOf('}') !== -1 || arr[i].indexOf('[') !== -1 || arr[i].indexOf(']') !== -1 ){
                        objFirst = arr[i].indexOf('{');
                        objLast = arr[i].lastIndexOf('}');
                        arrFirst = arr[i].indexOf('[');
                        arrLast = arr[i].lastIndexOf(']');
                        firstStr = arr[i].indexOf(':');
                        if(objFirst > arrFirst && arrFirst !== -1 ){
                            lastStr = arrLast;
                        }else if(objFirst < 0 && arrFirst > 0){
                            lastStr = arrLast;
                        }else{
                            lastStr = objLast;
                        }
                        objName = arr[i].slice(0, firstStr);
                        objProp = arr[i].slice(firstStr+1, lastStr+1).replaceAll('\'', '\"');

                        console.log(objProp);


                        obj[objName] = core.util.stringToObject(objProp);
                    }else{
                        objArr = arr[i].replaceAll(" ", "").split(':');
                        if(objArr.length !== 2 || objArr[1] == "" ){
                            throw new Error('�듭뀡媛믪씠 �섎せ�섏뿀�듬땲��.\n �섎せ �꾨떖�� �듭뀡 �띿꽦 : '+strValue);
                        }
                        if(objArr[1].indexOf('true') !== -1 || objArr[1].indexOf('false') !== -1){
                            objArr[1] = objArr[1] === 'true';
                            // console.log(objArr[1])
                        }else if($.isNumeric(objArr[1])){
                            objArr[1] = Number(objArr[1]);
                        }
                        obj[objArr[0]] = objArr[1];
                    }
                }
            }
            return obj
        },
         /**
         * �앹뾽�� �꾩슦�� �⑥닔
         * @param {string} url 二쇱냼
         * @param {Number=} width �덈퉬. �먮뒗 �듭뀡
         * @param {Number=} height �믪씠.
         * @param {opts=} �앹뾽 李� 紐⑥뼇 �쒖뼱 �듭뀡.(而ㅼ뒪���듭뀡: name(�앹뾽�대쫫), align(=center, 遺�紐⑥갹�� 媛��대뜲�� �꾩슱寃껋씤媛�),
         * @example
         * UI.openPopup('http://google.com', 500, 400, {name: 'notice', align: null, scrollbars: 'no'});
         * //or
         * UI.openPopup('http://google.com', {name: 'notice', width: 500, height: 400, scrollbars: 'no'});
         */
        openPopup: function (url, width, height, opts) {
            var opts, name, width, height;
            if (arguments.length === 2 && typeof width === 'object') {
                opts = width;
                name = opts.name || 'popupWin';
                width = opts.width || 600;
                height = opts.height || 400;
                
            }

            opts = $.extend({
                name: 'popupWin',
                width: width || 600,
                height: height || 400,
                align: 'center',
                resizable: 'no',
                scrollbars: 'no'
            }, opts);

            var target = opts.target || opts.name || 'popupWin',
                feature = 'app_, ',
                tmp = [],
                winCoords;

            if (opts.align === 'center') {
                
                winCoords = core.util.popupCoords(opts.width, opts.height);
                opts.left = winCoords.left;
                opts.top = winCoords.top;
            }
            delete opts.name;
            delete opts.target;
            delete opts.align;

            core.detect.isSafari && tmp.push('location=yes');
            core.each(opts, function (val, key) {
                tmp.push(key + '=' + val);
            });
            feature += tmp.join(', ');

            var popupWin = window.open(url, target, feature);
            /*if (!popupWin || popupWin.outerWidth === 0 || popupWin.outerHeight === 0) {
                alert("�앹뾽 李⑤떒 湲곕뒫�� �ㅼ젙�섏뼱 �덉뒿�덈떎\n\n李⑤떒 湲곕뒫�� �댁젣(�앹뾽�덉슜) �� �� �ㅼ떆 �댁슜�� 二쇱꽭��.");
                return false;
                }

                if (popupWin.location.href === 'about:blank') {
                popupWin.location.href = url;
                }*/

            return popupWin;
        },

        /**
         * �앹뾽�� �꾩슫 �꾩뿉 二쇱뼱吏� 肄쒕갚�⑥닔瑜� �몄텧
         * @param {string} url 二쇱냼
         * @param {object} feature �앹뾽 紐⑥뼇 (而ㅼ뒪���듭뀡: name(�앹뾽�대쫫), align(=center: 遺�紐⑥갹�� 媛��대뜲�� �꾩슱寃껋씤媛�),
         * @param {function()} (Optional) callback �꾩썙吏� �꾩뿉 �ㅽ뻾�� 肄쒕갚�⑥닔
         * @example
         * UI.util.openPopupAndExec('http://google.com', {name: 'notice', width: 500, height:400, align: 'nw'}, function(popup){
         *     alert('�앹뾽�� �뺤긽�곸쑝濡� �꾩썙議뚯뒿�덈떎.');
         *     popup.close(); // �댁옄留덉옄 �レ븘踰꾨┝....:-b
         * });
         */
        openPopupAndExec: function (url, feature, callback) {
            feature || (feature = {});

            var popupWin;

            if ((popupWin = this.openPopup(url, feature.width, feature.height, feature)) === false) {
                return;
            }
            if (!callback) {
                return;
            }

            var limit = 0, // 5珥� �대궡�� �앹뾽�� 濡쒕뵫�덈릺硫� 肄쒕갚�⑥닔 臾댁떆�대쾭由�
                fn = function () {
                    if (limit++ > 50) {
                        return;
                    }
                    if (!popupWin.document.body) {
                        setTimeout(fn, 100);
                        return;
                    }
                    callback && callback(popupWin);
                    popupWin.focus();
                };

            if (!popupWin.document.body) {
                setTimeout(fn, 100);
            } else {
                fn();
            }
        },


        /**
         * 而⑦뀗痢� �ъ씠利덉뿉 留욊쾶 李쎌궗�댁쫰瑜� 議곗젅
         * @example
         * UI.util.resizeToContent(); // �앹뾽�먯꽌留� �ъ슜
         */
        resizeToContent: function () {
            var innerX, innerY,
                pageX, pageY,
                win = window,
                doc = win.document;

            if (win.innerHeight) {
                innerX = win.innerWidth;
                innerY = win.innerHeight;
            } else if (doc.documentElement && doc.documentElement.clientHeight) {
                innerX = doc.documentElement.clientWidth;
                innerY = doc.documentElement.clientHeight;
            } else if (doc.body) {
                innerX = doc.body.clientWidth;
                innerY = doc.body.clientHeight;
            }

            pageX = doc.body.offsetWidth;
            pageY = doc.body.offsetHeight;

            win.resizeBy(pageX - innerX, pageY - innerY);
        },

        /**
         * �앹뾽�� �ъ씠利덉뿉 �곕Ⅸ �붾㈃�곸쓽 以묒븰 �꾩튂醫뚰몴瑜� 諛섑솚
         * @param {number} w �덈퉬.
         * @param {number} h �믪씠.
         * @return {{left:Number, top:Number}} {left: 媛�, top: 媛�}
         */
        popupCoords: function (w, h) {
            w = w || 400;
            h = h || 300;

            var dualScreenLeft = 'screenLeft' in window ? window.screenLeft : screen.left,
                dualScreenTop = 'screenTop' in window ? window.screenTop : screen.top,
                width = window.innerWidth || document.documentElement.clientWidth || screen.width,
                height = window.innerHeight || document.documentElement.clientHeight || screen.height,
                left = ((width / 2) - (w / 2)) + dualScreenLeft,
                top = ((height / 2) - (h / 2)) + dualScreenTop;

            return {
                left: left,
                top: top
            };
        },

        /**
         * 二쇱뼱吏� �쒓컙怨� �⑥� �쒓컙�� 李⑥씠瑜� 諛섑솚\
         * @param {element} �곸슜�� �섎━癒쇳듃
         * @param {string} '20201010125900' �뺤떇�� �⑥� �쒓컙 臾몄옄��
         * @param {format} 'dd, HH, mm, ss' ��, ��, 遺�, 珥� �� �щĸ
         */
        countDownTimer: function (target, end, fm) {
            var format = fm || 'dd:hh:mm:ss',
                endTime = new Date(end.replace(/([\d]{4})([\d]{2})([\d]{2})([\d]{2})([\d]{2})([\d]{2})/, '$2/$3/$1 $4:$5:$6')),
                distance="",
                _second = 1000,
                _minute = _second * 60,
                _hour = _minute * 60,
                _day = _hour * 24,
                timer;
            function showRemaining(){
                var now = new Date();
                distance = endTime - now;
                if(distance<0){
                    clearInterval(timer);
                    return;
                } 
                var days = Math.floor(distance / _day),
                    hours = Math.floor((distance % _day) / _hour),
                    minutes = Math.floor((distance % _hour) / _minute),
                    seconds = Math.floor((distance % _minute) / _second),
                    result = format.replace(/(dd|hh|mm|ss)/gi, function ($1) {
                        switch ($1) {
                            case "dd": return days.zf(2);
                            case "hh": return hours.zf(2);
                            case "mm": return minutes.zf(2);
                            case "ss": return seconds.zf(2);
                            default: return $1;
                        }
                    });
                // console.log(result);
                target.text(result)
            };
            showRemaining();
            timer = setInterval(showRemaining, 1000)
        },
        /**
         * history.scrollRestoration�� 吏��먰븯�� 釉뚮씪�곗��� 寃쎌슦 �먮룞 �ㅽ겕濡� �숈옉�� �뺣땲��.
         */
        disabledScrollRestoration: function () {
            if ('scrollRestoration' in history) {
                history.scrollRestoration = 'manual';
            }
        }
    });
})(window[LIB_NAME], jQuery);

/**
 * 
 * @events �대깽��
 */
;(function(core, $, undefined){
    "use strict";
	var r = document.querySelector('html'),
		w = $(window).width(),
		$html = $('html'),
		$event = $.event,
		$special,
        sizes = core.detect.sizes,
        lastScrollAt = Date.now(),
        timeout,
        scrollStartStop = function() {
			var $this = $(this)
			
			if (Date.now() - lastScrollAt > 100) $this.trigger('scrollstart')
				
			lastScrollAt = Date.now()
			
			clearTimeout(timeout)
			
			timeout = setTimeout(function() {
				if (Date.now() - lastScrollAt > 99) $this.trigger('scrollend')
			}, 100)
		},
		$special = $event.special.changeSize = {
			setup: function() {
				$( this ).on( "resize", $special.handler );
			},
			teardown: function() {
				$( this ).off( "resize", $special.handler );
			},
			handler: function( event, execAsap ) {
				var context = this,
					w = $(window).width(),
					mode = core.detect.mediaInfo.mode,
					dispatch = function(mode) {
						event.type = "changeSize";
						$(window).trigger('changeSize', mode);
					};
				for (var i = 0; sizes[i]; i++) {
					if (w >= sizes[i].min && w <= sizes[i].max && core.detect.mediaInfo.mode !== sizes[i].mode) {
						dispatch(sizes[i].mode);
						core.detect.mediaInfo.mode = sizes[i].mode;
						break;
					}
				}
			}
		};
	for (var i = 0; sizes[i] ; i++) {
		if (w >= sizes[i].min && w <= sizes[i].max) {
			switch (sizes[i].mode) {
				case 'mobile':
					r.classList.add('mobile')
					break;
				case 'tablet':
					r.classList.add('tablet')
					break;
				case 'web':
					r.classList.add('web')
					break;
			}
			core.detect.mediaInfo.mode = sizes[i].mode;
			break;
		}
    }
    $(document).on('scroll.startstop', scrollStartStop)
	$(window).on('changeSize', function(e, mode){
		for (var i = 0; i < sizes.length; i++) {
			$html.removeClass(sizes[i].mode);
		}
		$html.addClass(mode);
		core.detect.mediaInfo.mode = mode;
	})

	// transition end event
	$.support.transition = core.transitionEnd()
    if (!$.support.transition) return

    $.event.special.bsTransitionEnd = {
		bindType: $.support.transition.end,
		delegateType: $.support.transition.end,
		handle: function (e) {
			if ($(e.target).is(this)) return e.handleObj.handler.apply(this, arguments)
		}
    }
})(window[LIB_NAME], jQuery);


/**
 * 
 * UI 怨듯넻
 */
;(function(core, $, undefined){
    "use strict";

})(window[LIB_NAME], jQuery);

/* 
============================================================== UI 而댄룷�뚰듃 Start
*/

/**
 * @name sticky
 * @selector [data-modules-sticky]'
 * @options breakPoint : $(element) 	// �꾨떖�� ���됲꽣 �� �ъ��� �섎떒�먯꽌 釉뚮젅�댄겕
 */
;(function(core, $, undefined){
    "use strict";
    var win = $(window),
    Default = {
        padding : 0,
        breakPoint : null,
        relativeLists : null,
        relativeTarget : null,
        activeSticky : false,
        activeStickyScroll : false,
        className : null,
        align : 'top',
        name : "sticky",
        customAlignPosition : 0
    },
    activeClass = 'fixed',
    forEach = Array.prototype.forEach,
    name = "sticky",
    ui = core.ui,
    Widget = ui.Widget,
    Sticky = Widget.extend({
		name : name,
		init: function (element, config){
			var _ = this;
			var options = _.options = $.extend({}, Default, config);
			Widget.fn.init.call(_, element, options);
            _.options.padding = Number(_.options.padding);
            _.element.wrap('<div class="sticky-ui-wrapper">')
            _.element.before('<div class="sticky-placeholder">')    
            _.placehiolder = _.element.parent().find('.sticky-placeholder');
            _.wrapper = _.element.closest('.sticky-ui-wrapper');
            _.options.pos = _.placehiolder.offset().top + _.options.padding;
            if(_.options.className !== null ) _.wrapper.addClass(_.options.className);
            _._setBreakPoint();
            _._isResize = false;
            _.posRefresh();
            // console.log(_.placehiolder.offset().top);
            $(this).trigger('scroll');
            _._bindEvent();
            _.activeSticky();
		},
		_bindEvent : function() {
            var _ = this;
            
            win.on('load', function(e){
                _._setBreakPoint();
                _.posRefresh();
                $(this).trigger('scroll');
            })
            .on('scroll', function(e){
                e.preventDefault();
                if(!_.element.is(':visible') || _._isResize ) return;
				var $this = $(this);
                var scrollPos = $this.scrollTop();
                _.options.pos = _.placehiolder.offset().top + _.options.padding;
				if(scrollPos > _.options.pos){
                    _.element.addClass(activeClass);
                    _.element.css(_.options.align, (Math.abs(_.options.padding)));
                    _.placehiolder.css('height', _.element.outerHeight());
                    _.options.activeSticky = true;
					if(_.options.breakPoint !== null){
                        _._breakAction(scrollPos);                        
					}
				}else{
                    _.element.removeClass(activeClass);
                    if(_.options.customAlignPosition != 0) _.element.css(_.options.align, _.options.customAlignPosition);
                    else _.element.css(_.options.align, '');
                    _.placehiolder.css('height', '');
                    _.options.activeSticky = false;
                    _.element.find(".sticky-inner").css('transform','');
				}
            })
            .on('resize', function(e){
                e.preventDefault();
                _._isResize = true;
                setTimeout(function(){
                    _.posRefresh(); 
                },0)
                
            })
		},
		posRefresh : function(pos){
            var _ = this;
            if(!_.element.is(':visible')) return;
            _.element.removeClass('fixed');
            _.element.css('top', '');
            _._setRelativeTarget();
            if(pos) _.options.padding = pos;
            
            _._isResize = false;
            win.trigger('scroll');
            
        },
        setPosition : function(align, pos){
            var _ = this;
            if(!_.element.is(':visible')) return;
            _.element.removeClass('fixed');
            _._setRelativeTarget();
            if(align && pos) {
                _.options.align = align;
                _.options.customAlignPosition = pos;
                _.element.css(align, pos);
            }

            win.trigger('scroll');
        },
        activeSticky : function(){
            var _ = this;
            if(_.options.activeStickyScroll){
                // console.log(_.options.padding);
                UI.util.disabledScrollRestoration();
                $(window).scrollTop(_.options.pos + _.options.padding)
            }
        },
		_breakAction : function(pos) {
            var _ = this;
			var breakPointPos = _.breakPoint.offset().top + _.breakPoint.outerHeight() + pos;
            var elPos = _.element.offset().top + _.element.outerHeight() + pos;
			if(breakPointPos < elPos){
                _.element.find(".sticky-inner").css({"transform":"translate(0, "+(breakPointPos - elPos)+"px)"});
                _.element.addClass('ui-break');
			}else{
                _.element.find(".sticky-inner").css('transform','');
                _.element.removeClass('ui-break');
			}
        },
        _setRelativeTarget : function(){
            var _ = this;
            if(_.options.relativeLists !== null){
                var elTop = 0;
                forEach.call(_.options.relativeLists, function (item, i) {
                    var el = $(item);
                    var padding = 0;
                    if(el.length > 0){
                        padding = el.outerHeight();
                    }
                    console.log(el.outerHeight());
                    elTop += padding;
                });
                _.options.padding = (elTop*-1);
            }
            if(_.options.relativeTarget !== null){
                var el = $(_.options.relativeTarget);
                if(el.data(name)){
                    _.options.padding = (el.outerHeight() - el.data(name).options.padding) * -1;
                }else if(el.length !== 0){
                    _.options.padding = el.outerHeight() * -1;
                }else{
                    _.options.padding = 0;
                }
                
            }
        },
        _setBreakPoint : function(){
            var _ = this;
            if(_.options.breakPoint !== null && _.element.closest(_.options.breakPoint).length > 0){
                _.breakPoint = _.element.closest(_.options.breakPoint);
                // console.log(_.options.breakPoint);
            }else{
                _.breakPoint = $(_.options.breakPoint)
            }
        }
	})
    ui.plugin(Sticky);
})(window[LIB_NAME], jQuery);

/**
 * @name dropdown
 * @selector [data-modules-dropdown]'
 */
;(function(core, $, undefined){
    "use strict";
    var backdrop = '.dropdown-backdrop',
        toggle   = '[data-modules-dropdown]',
        activeClass = "ui-active",
        name = 'dropdown';


    var Dropdown = function (element, opt) {
        $(element).on('click.'+core.prefix+'.'+name, this.toggle)

    }

    function getParent($this) {
        var selector = $this.attr('data-target')

        if (!selector) {
        selector = $this.attr('href')
        selector = selector && /#[A-Za-z]/.test(selector) && selector.replace(/.*(?=#[^\s]*$)/, '') // strip for ie7
        }

        var $parent = selector && $(selector)

        return $parent && $parent.length ? $parent : $this.parent()
    }

    function clearMenus(e) {
        if (e && e.which === 3) return
        $(backdrop).remove()
        $(toggle).each(function () {
            var $this         = $(this)
            var $parent       = getParent($this)
            var relatedTarget = { relatedTarget: this }

            if (!$parent.hasClass(activeClass)) return

            if (e && e.type == 'click' && /input|textarea/i.test(e.target.tagName) && $.contains($parent[0], e.target)) return

            $parent.trigger(e = $.Event('hide.'+core.prefix+'.'+name, relatedTarget))

            if (e.isDefaultPrevented()) return

            $this.attr('aria-expanded', 'false')
            $parent.removeClass(activeClass).trigger($.Event('hidden.'+core.prefix+'.'+name, relatedTarget))
        })
    }

    Dropdown.prototype.toggle = function (e) {
        var $this = $(this)
        
        if ($this.is('.disabled, :disabled, .readonly')){
            e.preventDefault();
            return;
        } 

        var $parent  = getParent($this)
        var isActive = $parent.hasClass(activeClass)

        clearMenus()

        if (!isActive) {
        if ('ontouchstart' in document.documentElement && !$parent.closest('.navbar-nav').length) {
            // if mobile we use a backdrop because click events don't delegate
            $(document.createElement('div'))
            .addClass('dropdown-backdrop')
            .insertAfter($(this))
            .on('click', clearMenus)
        }

        var relatedTarget = { relatedTarget: this }
        $parent.trigger(e = $.Event('show.'+core.prefix+'.'+name, relatedTarget))

        if (e.isDefaultPrevented()) return

        $this
            .trigger('focus')
            .attr('aria-expanded', 'true')

        $parent
            .toggleClass(activeClass)
            .trigger($.Event('shown.'+core.prefix+'.'+name, relatedTarget))
        }
        
        return false
    }

    Dropdown.prototype.keydown = function (e) {
        if (!/(38|40|27|32)/.test(e.which) || /input|textarea/i.test(e.target.tagName)) return

        var $this = $(this)

        e.preventDefault()
        e.stopPropagation()

        if ($this.is('.disabled, :disabled')) return

        var $parent  = getParent($this)
        var isActive = $parent.hasClass(activeClass)

        if (!isActive && e.which != 27 || isActive && e.which == 27) {
        if (e.which == 27) $parent.find(toggle).trigger('focus')
            return $this.trigger('click')
        }

        var desc = ' li:not(.disabled):visible a'
        var $items = $parent.find('.dropdown-menu' + desc)

        if (!$items.length) return

        var index = $items.index(e.target)

        if (e.which == 38 && index > 0)                 index--         // up
        if (e.which == 40 && index < $items.length - 1) index++         // down
        if (!~index)                                    index = 0

        $items.eq(index).trigger('focus')
    }


    // DROPDOWN PLUGIN DEFINITION
    // ==========================

    function Plugin(option) {
        return this.each(function () {
        var $this = $(this)
        var data  = $this.data('dropdown')

        if (!data) $this.data('dropdown', (data = new Dropdown(this)))
        if (typeof option == 'string') data[option].call($this)
        })
    }

    var old = $.fn.dropdown

    $.fn.dropdown             = Plugin
    $.fn.dropdown.Constructor = Dropdown


    // DROPDOWN NO CONFLICT
    // ====================

    $.fn.dropdown.noConflict = function () {
        $.fn.dropdown = old
        return this
    }


    // APPLY TO STANDARD DROPDOWN ELEMENTS
    // ===================================

    $(document)
        // .on('click'+core.prefix+'.'+name+'.data-api', clearMenus)
        // .on('click'+core.prefix+'.'+name+'.data-api', '.dropdown form', function (e) { e.stopPropagation() })
        .on('click'+core.prefix+'.'+name+'.data-api', toggle, Dropdown.prototype.toggle)
        .on('keydown'+core.prefix+'.'+name+'.data-api', toggle, Dropdown.prototype.keydown)
        .on('keydown'+core.prefix+'.'+name+'.data-api', '.dropdown-menu', Dropdown.prototype.keydown)
})(window[LIB_NAME], jQuery);

/**
 * @name tab
 * @selector [data-modules-tab]'
 */
;(function(core, $, undefined){
    "use strict";
   
    var selector   = '[data-modules-tab]',
        name = 'tab',
        ui = core.ui,
        Widget = ui.Widget,
        Default = {
            activeClass : "ui-active",
            DURATIONS : 500,
            selector : selector
        },
        Tab = Widget.extend({
            name : name,
            init: function (element, config){
                var _ = this;
                var options = _.options = $.extend({}, Default, config);
                Widget.fn.init.call(_, element, options);
            },
            show : function () {
                var _ = this;
                var $this    = this.element
                var $ul      = $this.closest('ul:not(.dropdown-menu)')
                var selector = $this.data('target')
            
                if (!selector) {
                    selector = $this.attr('href')
                    selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') // strip for ie7
                    if ($this[0].hash === '') {
                        selector = 'template';
                    }
                }
            
                if ($this.parent('li').hasClass(_.options.activeClass)) return
            
                var $previous = $ul.find('.'+_.options.activeClass+':last a')
                var hideEvent = $.Event('hide'+core.prefix+'.'+name, {
                    relatedTarget: $this[0]
                })
                var showEvent = $.Event('show'+core.prefix+'.'+name, {
                    relatedTarget: $previous[0]
                })
            
                $previous.trigger(hideEvent)
                $this.trigger(showEvent)
            
                if (showEvent.isDefaultPrevented() || hideEvent.isDefaultPrevented()) return
                _.target = $(document).find(selector)
            
                this.activate($this.closest('li'), $ul)
                this.activate(_.target, _.target.parent(), function () {
                    $previous.trigger({
                        type: 'hidden'+core.prefix+'.'+name,
                        relatedTarget: $this[0]
                    })
                    $this.trigger({
                        type: 'shown'+core.prefix+'.'+name,
                        relatedTarget: $previous[0]
                    })
                })


                _.reloadModules();
            },
            
            activate : function (element, container, callback) {
                var _ = this;
                var $active    = container.find('> .'+_.options.activeClass)
                var transition = callback
                    && $.support.transition
                    && ($active.length && $active.hasClass('fade') || !!container.find('> .fade').length)
            
                function next() {
                    $active
                        .removeClass(_.options.activeClass)
                        .find('> .dropdown-menu > .'+_.options.activeClass)
                        .removeClass(_.options.activeClass)
                        .end()
                        .find(_.options.selector)
                        .attr('aria-expanded', false)
            
                    element
                        .addClass(_.options.activeClass)
                        .find(_.options.selector)
                        .attr('aria-expanded', true)
            
                    if (transition) {
                        element[0].offsetWidth // reflow for transition
                        element.addClass('in')
                    } else {
                        element.removeClass('fade')
                    }
            
                    if (element.parent('.dropdown-menu').length) {
                        element
                            .closest('li.dropdown')
                            .addClass(_.options.activeClass)
                            .end()
                            .find(_.options.selector)
                            .attr('aria-expanded', true)
                    }
            
                    callback && callback()
                }
            
                $active.length && transition ?
                     $active
                        .one('bsTransitionEnd', next)
                        .emulateTransitionEnd(Tab.TRANSITION_DURATION) :
                    next()
                
                    $active.removeClass('in')
            },
            reloadModules : function(){
                var _ = this;
                if( _.target.find('[data-modules-moreview]').length > 0 ){
                    _.target.find('[data-modules-moreview]').moreview('create');
                }

                if(_.target.find('[data-modules-cascadingGrid]').length !== 0){
                    _.target.find('[data-modules-cascadingGrid]').cascadingGrid('mount')
                }

                if(_.target.find('[data-modules-slick]').length !== 0){
                    _.target.find('[data-modules-slick]').slick('setPosition');
                }
                
            }
        })
    ui.plugin(Tab);

    function clickHandler(e){
        var $this = $(this);

        if(!$this.data('tab')){
            $(selector).each(function(){
                var $this = $(this);
                if(!$this.data('tab')){
                    $this[name]();
                }
            })
        }
        $this[name]().show();
        return false;
    }
    $(document)
        .on('click'+core.prefix+'.'+name+'.data-api', selector, clickHandler)
})(window[LIB_NAME], jQuery);


/**
 * @name collapse
 * @selector [data-modules-collapse]'
 */
;(function(core, $, undefined){
    "use strict";
   
    var selector   = '[data-modules-collapse]',
        name = 'collapse',
        ui = core.ui,
        Widget = ui.Widget,
        Default = {
            activeClass : "selected",
            DURATIONS : 350,
            selector : selector,
            targetClass : 'accordion-panel',
            animate : false,
            animationClass : 'collapsani',
            parent : null
        },
        Collapse = Widget.extend({
            name : name,
            init: function (element, config){
                var _ = this;
                var options = _.options = $.extend({}, Default, config);
                Widget.fn.init.call(_, element, options);
                _.transitioning = null;
                _.element = $(element);
                var target = ui.getNext(element, _.options.targetClass);
                _.$element = $(target.el);
                _.$trigger = $(target.trigger);
                _.$parent = _.$element.closest(_.options.parent);
                _._bindEvent();
            },
            _bindEvent : function(){
                var _ = this;
                _.element.on('click'+core.prefix+'.'+name+'.data-api', $.proxy(_._handler, this))
            },
            _handler : function(e){
                e.preventDefault();
                var _ = this,
                    el = e.currentTarget;
                if(_.options.animate && $(el).hasClass(_.options.animationClass)) return;
                _.toggle();
            },
            dimension : function () {
                var hasWidth = this.$element.hasClass('width')
                return hasWidth ? 'width' : 'height'
            },
            show : function () {
                var _ = this;
                var openTrigger = _.$parent.find('.'+_.options.activeClass+'.'+_.options.targetClass)
                if(_.$parent && openTrigger){
                    // .removeClass(_.options.activeClass)
                    // .removeClass(_.options.activeClass)
                    // _.hide(openTrigger.prev(), openTrigger)
                    if(openTrigger.prev().data('collapse') !== undefined){
                        openTrigger.prev().collapse('toggle')
                    }else{
                        openTrigger.prev().find('[data-modules-collapse]').collapse('toggle')
                    }
                    
                }
                if(_.options.animate){
                    _.$element
                        .addClass(_.options.activeClass)
                        .addClass(_.options.animationClass);
                    _.$trigger
                        .addClass(_.options.animationClass)
                        .addClass(_.options.activeClass)
                        .height(_.$trigger[0].scrollHeight);
                        
                    if( parseFloat(window.getComputedStyle(_.$trigger[0]).transitionDuration) > 0 ){
                        _.$trigger.one('bsTransitionEnd', function(e){
                            _.$trigger.height('auto');
                            _.$trigger.removeClass(_.options.animationClass);
                            _.$element.removeClass(_.options.animationClass);
                        })
                    }else{
                        _.$trigger.height('auto');
                        _.$trigger.removeClass(_.options.animationClass);
                        _.$element.removeClass(_.options.animationClass);
                    }
                    
                }else{
                    _.$element.addClass(_.options.activeClass);
                    _.$trigger.addClass(_.options.activeClass);
                }
                if(core.detect.isIE){
                    var currentTop =  $(window).scrollTop();
                    var st = _.$element.offset().top-200;
                    var range = currentTop-st;
                    if(Math.abs(range) > 100){
                        $(window).scrollTop(st);
                    }
                }
            },
            hide : function (el, tigr) {
                var _ = this;
                var nav = el !== undefined ? el : _.$element
                var cont = tigr !== undefined ? tigr : _.$trigger
                if(_.options.animate){
                    _.$element.removeClass(_.options.activeClass);
                    _.$element.addClass(_.options.animationClass);
                    _.$trigger
                        .height(_.$trigger[0].offsetHeight)    
                        .addClass(_.options.animationClass)
                        .height(0);
                    if( parseFloat(window.getComputedStyle(_.$trigger[0]).transitionDuration) > 0 ){
                        _.$trigger.one('bsTransitionEnd', function(e){
                            _.$trigger
                                .height('')
                                .removeClass(_.options.animationClass)
                                .removeClass(_.options.activeClass)
                            _.$element.removeClass(_.options.animationClass);
                        })
                    }else{
                        _.$trigger
                            .height('')
                            .removeClass(_.options.animationClass)
                            .removeClass(_.options.activeClass)
                        _.$element.removeClass(_.options.animationClass);
                    }
                }else{
                    _.$element.removeClass(_.options.activeClass);
                    _.$trigger.removeClass(_.options.activeClass);
                }
            },            
            toggle : function () {
                var _ = this;
                _[_.$element.hasClass(_.options.activeClass) ? 'hide' : 'show']()
            }
        })
    ui.plugin(Collapse);

    // function clickHandler(e){
    //     var $this = $(this);

    //     if(!$this.data(name)){
    //         $(selector).each(function(){
    //             var $this = $(this);
    //             if(!$this.data(name)){
    //                 $this[name]();
    //             }
    //         })
    //     }
    //     $this[name]()._handler(e);
    //     return false;
    // }
    // $(document)
    //     .on('click'+core.prefix+'.'+name+'.data-api', selector, clickHandler)
})(window[LIB_NAME], jQuery);

/**
 * @name customtoggle
 * @selector [data-modules-customtoggle]'
 */
;(function(core, $, undefined){
    "use strict";
   
    var selector   = '[data-modules-customtoggle]',
        name = 'customtoggle',
        ui = core.ui,
        Widget = ui.Widget,
        Default = {
            activeClass : "ui-active",
            grouping : null,
            parent : null,
            openText:'�붾낫湲�',
            closeText:'�リ린',
            textCtr : "[data-text]",
            closeBtn : "[data-close-btn]"
        },
        Customtoggle = Widget.extend({
            name : name,
            init: function (element, config){
                var _ = this;
                // var cWidth = 0;
                var options = _.options = $.extend({}, Default, config);
                Widget.fn.init.call(_, element, options);
                _.transitioning = null;
                _.element = $(element);
                _.text = _.element.find(_.options.textCtr);
                _.$parent = (_.options.parent) ? _.element.closest(_.options.parent) : _.element;
                _._bindEvent();
                // $(".keyword-tag ul li").each(function(){
                //     cWidth += $(this).outerWidth(true);
                // });
                //tag list �덈퉬媛� contents �덈퉬蹂대떎 �묒� 寃쎌슦 �붾낫湲� �앹꽦 �덊븿
                // �ㅻⅨ 而⑦뀗痢좎뿉�� 臾몄젣媛� �앷꺼 disable
                // if(cWidth < _.$parent.get(0).clientWidth){
                //     _.element.get(0).style.display = "none";
                //     return;
                // }
            },
            _bindEvent : function(){
                var _ = this;
                _.element.on('click'+core.prefix+'.'+name+'.data-api', $.proxy(_._handler, this));
                _.$parent.on('click'+core.prefix+'.'+name+'.data-api', _.options.closeBtn, $.proxy(_.toggle, this));
            },
            _handler : function(e){
                e.preventDefault()
                var _ = this;
                _.toggle();
            },
            show : function () {
                var _ = this,
                    scTop = $(window).scrollTop();
                if(_.options.grouping !== null){
                    $(_.options.grouping).find('.'+_.options.activeClass +' '+selector).trigger('click')
                }
                _.$parent.addClass(_.options.activeClass);
                $(window).scrollTop(scTop);
                if(_.text.length){
                    _.text.text(_.options.closeText)
                }
                core.ui.modulesRefresh(_.$parent);
            },
            hide : function () {
                var _ = this,
                scTop = $(window).scrollTop();
                _.$parent.removeClass(_.options.activeClass);
                $(window).scrollTop(scTop);
                if(_.text.length){
                    _.text.text(_.options.openText)
                }
            },            
            toggle : function (e) {
                var _ = this;
                _[_.$parent.hasClass(_.options.activeClass) ? 'hide' : 'show']();
                _.element.trigger(e = $.Event('toggle.'+name, { relatedTarget: this }))
            }
        })
    ui.plugin(Customtoggle);

    // function clickHandler(e){
    //     var $this = $(this);

    //     if(!$this.data(name)){
    //         $(selector).each(function(){
    //             var $this = $(this);
    //             if(!$this.data(name)){
    //                 $this[name]();
    //             }
    //         })
    //     }
    //     $this[name]().show();
    //     return false;
    // }
    // $(document)
    //     .on('click'+core.prefix+'.'+name+'.data-api', selector, clickHandler)
})(window[LIB_NAME], jQuery);



/**
 * @name cascadingGrid
 * @selector [data-modules-cascadingGrid]'
 */
;(function(core, $, undefined){
    "use strict";
   
    var selector   = '[data-modules-cascadingGrid]',
        forEach = Array.prototype.forEach,
        win = $(window),
        name = 'cascadingGrid',
        ui = core.ui,
        Widget = ui.Widget,
        Default = {
            padding : 0,
            items : null
        },
        CascadingGrid = Widget.extend({
            name : name,
            init : function (element, config){
                var _ = this;
                var options = _.options = $.extend({}, Default, config);
                _.element = $(element);
                Widget.fn.init.call(_, element, options);
                _.mount();
                win.on('load resize', function(){
                    _.mount();
                });
                // if(_.element.closest('[data-modules-tab]').length !== 0){
                //     $('[data-modules-tab]').on('show.hui.tab', function(){
                //         $(selector).CascadingGrid().mount();
                //     })
                // }
            },
            mount : function (){
                var _ = this;
                _.element.width('auto');
                _.items = _.element.find('[data-items]');
                var containerWidth = _.element.outerWidth(),
                    itemWidth = _.items[0].getBoundingClientRect().width + _.options.padding,
                    cols = Math.max(Math.floor( (containerWidth+_.options.padding) / (itemWidth)), 1),
                    count = 0,
                    itemsPosX = [],
                    itemsGutter = [];
                // console.log(containerWidth+wrapPadding)
                _.element.css({"width":(itemWidth * cols - _.options.padding) + 'px'});
                
                for ( var g = 0 ; g < cols ; ++g ) {
                    itemsPosX.push(g * itemWidth + _.options.padding);
                    itemsGutter.push(_.options.padding);
                }
                forEach.call(_.items, function (item, i) {
                    var itemIndex = itemsGutter
                        .slice(0)
                        .sort(function (a, b) {
                            return a - b;
                        })
                        .shift();
                    itemIndex = itemsGutter.indexOf(itemIndex);
                    var posX = parseInt(itemsPosX[itemIndex]) - _.options.padding;
                    var posY = parseInt(itemsGutter[itemIndex]) - _.options.padding;
    
                    item.style.transform = 'translate(' + posX + 'px,' + posY + 'px)';
    
                    itemsGutter[itemIndex] += item.getBoundingClientRect().height + _.options.padding;
                    count = count + 1;
                });
                var containerHeight = itemsGutter
                .slice(0)
                .sort(function (a, b) {
                    return a - b;
                })
                .pop();
                _.element.height(containerHeight)
            }
        })
    ui.plugin(CascadingGrid);
})(window[LIB_NAME], jQuery);

/**
 * @name selectbox
 * @selector [data-modules-selectbox]'
 */
;(function(core, $, undefined){
    "use strict";
   
    var selector   = '[data-modules-selectbox]',
        forEach = Array.prototype.forEach,
        win = $(window),
        doc = $(document),
        name = 'selectbox',
        ui = core.ui,
        Widget = ui.Widget,
        Default = {
            activeClass : "ui-active",
            mouseenter : false,
        },
        Selectbox = Widget.extend({
            name : name,
            init : function (element, config){
                var _ = this;
                var options = _.options = $.extend({}, Default, config);
                var selectTrigger = false;
                _.element = $(element);
                Widget.fn.init.call(_, element, options);
                _.$selectbox = _.element.find('> select');
                _.$list = $('<div class="ui-selectbox" />');
                _.$label = $('<div class="ui-label" />');
                _.$option = _.$selectbox.find('option');
                _.$label.append('<a>');
                _.element.wrap('<div class="selectwrap">').append(_.$label).append(_.$list);
                _._create(selectTrigger);
                _._bindEvents();
            },
            _create: function(selectTrigger) { 
                var _ = this, 
                    list= '', 
                    selectIndex = 0;

                forEach.call(_.$option, function (elem, index) {
                    if(elem.hasAttribute("selected") || elem.selected){
                        selectIndex = index;
                    }
                    list += '<li><a href="#'+(index+1)+'">'+$(elem).html()+'</a></li>'; 
                });
                _._updateLabel(selectIndex, selectTrigger);
                _.$list.empty().html( '<div class="selectbox_area"><ul>'+list+'</ul></div>'); 
            },
            _bindEvents: function(){
                var _ = this,
                    timer;
                _.$label.find('>a').on('click', function(e){
                    e.preventDefault();
                    if(_.options.mouseenter) return;
                    if(_.checkDisabled()){
                        return false;
                    }
                    var $this = $(this);
                    if(_.element.hasClass(_.options.activeClass)){
                        _.close();
                    }else{
                        _.open();
                    }
                }).on('focusout focusin', function(e) {
                    var $this = $(this);
                    if(_.checkDisabled()){
                        return false;
                    }
                    clearTimeout(timer), timer = null; 
                    if( e.type === 'focusout' && _.element.hasClass(_.options.activeClass) ) {
                        timer = setTimeout( function() {
                            _.close();
                        }, 200 );
                    }
                });
                if(_.options.mouseenter){
                    _.element.on('mouseenter', function(e){
                        if(_.checkDisabled()){
                            return false;
                        }
                        _.open();
                    })
                    .on('mouseleave', function(e){
                        _.close();
                    })
                }
                _.$list.on('click', 'a', function( e ) {
                    e.preventDefault();
                    var selectIndex = $(this).parent().index(),
                        selectTrigger = true;
                    _._updateLabel(selectIndex, selectTrigger);
                    _.close();

                }).on('focusout focusin', function( e ) {
                    clearTimeout(timer), timer = null; 
                    if( e.type === 'focusout' && _.element.hasClass(_.options.activeClass) ) {
                        timer = setTimeout( function() {
                            _.close();
                        }, 200 );
                    }
                }).on('keydown', 'a', function( e ) {

                });
            },
            open : function(){
                var _ = this;
                _.$list.show();
                _.setPosition();
                _.element.addClass(_.options.activeClass);
            },
            close : function(){
                var _ = this;
                _.$list.hide();
                _.element.removeClass('ui-bottom');
                _.element.removeClass(_.options.activeClass);
                
            },
            setPosition : function(){
                var _ = this;
                var scrollTop = win.scrollTop();
                var winHeight = win.height();
                var uiPosX = _.$list.offset().top;
                var uiHeight = _.$list.outerHeight();
                if( (uiPosX + uiHeight) >  (winHeight + scrollTop) && _.element.offset().top > _.$list.height() ){
                    _.element.addClass('ui-bottom');
                }
            },
            _updateLabel : function(index, selectTrigger){
                var _ = this;
                _.$selectbox[0].selectedIndex = index;
                _.$label.find('>a').empty().text(_.$option.eq(index).html())
                _.$label.find('>a').attr("href", "#"+Number(index+1));
                if(selectTrigger) _.$selectbox.trigger( 'change', {selectedIndex:_.$selectbox[0].selectedIndex} ); 
            },
            refresh : function(selectTrigger){
                var _ = this;
                _.$option = _.$selectbox.find('option');
                _._create(selectTrigger)
            },
            selected : function(val){
                var _ = this,
                    selectTrigger = true;
                forEach.call(_.$option, function (item, i) {
                    item.selected = false;
                    if(item.value === val || item.label === val ||  item.index === parseInt(val, 10) ){
                        item.selected = true;
                    }
                });
                _.refresh(selectTrigger);
            },
            checkDisabled : function(){
                var _ = this;
                if( _.element.hasClass('disabled') || _.element.hasClass('readonly') ){
                    return true;
                }
                return false;
            }
        })
    ui.plugin(Selectbox);
})(window[LIB_NAME], jQuery);


/**
 * @name modal
 * @selector [data-modules-modal]'
 */
;(function(core, $, undefined){
    var selector   = '[data-modules-modal]',
        forEach = Array.prototype.forEach,
        win = $(window),
        doc = $(document),
        name = 'modal',
        ui = core.ui,
        Widget = ui.Widget,
        Default = {
            backdrop: true,
            keyboard: true,
            show: true,
            TRANSITION_DURATION : 300,
            modalOpen : "ui-modal-open",
            ignoreDimmedClick:true,
            isposition:false
        },
        Modal = Widget.extend({
            name : name,
            init : function (element, config){
                var _ = this;
                var options = _.options = $.extend({}, Default, config);
                _.$element = $(element);

                var isposition = _.$element.attr("data-isposition");
                if(isposition != undefined && isposition != null){
                    Default['isposition'] = Boolean(isposition);
                }

                if(config){
                    if( config.ignoreDimmedClick != undefined && config.ignoreDimmedClick != null){
                        Default['ignoreDimmedClick'] = (config.ignoreDimmedClick === true)?true:false;
                    }
                }

                Widget.fn.init.call(_, element, options);
                _.$body = $(document.body);
                _.$dialog = this.$element.find('.modal-dialog');
                _.$backdrop = null;
                _.isShown = null;
                _.originalBodyPad = null;
                _.scrollbarWidth = 0;
                _.ignoreBackdropClick = false;
                _.fixedContent = '.navbar-fixed-top, .navbar-fixed-bottom';
            },


            toggle : function (_relatedTarget) {
                var _ = this;
                return _.isShown ? _.hide() : _.show(_relatedTarget)
            },
            show : function (_relatedTarget) {
                var _ = this;
                var e = $.Event('show.hui.modal', { relatedTarget: _relatedTarget })
                _.scrollTop = $(window).scrollTop();
                
                _.$element.trigger(e)
            
                if (_.isShown || e.isDefaultPrevented()) return
            
                _.isShown = true
            
                _.checkScrollbar()
                _.setScrollbar()
                _.$body.addClass(_.options.modalOpen)
            
                _.escape()
                _.resize()
                core.ui.modulesRefresh(_.$element);
                _.$element.on('click.dismiss.hui.modal', '[data-dismiss="modal"]', $.proxy(_.hide, _))
            
                _.$dialog.on('mousedown.dismiss.hui.modal', function () {
                    _.$element.one('mouseup.dismiss.hui.modal', function (e) {
                        if ($(e.target).is(_.$element)) _.ignoreBackdropClick = true
                    })
                })
            
                _.backdrop(function () {
                    var transition = $.support.transition && _.$element.hasClass('fade')
                
                    if (!_.$element.parent().length) {
                        _.$element.appendTo(_.$body) // don't move modals dom position
                    }
            
                    _.$element
                        .show()
                        .scrollTop(0)
                
                        _.adjustDialog()
            
                    if (transition) {
                        _.$element[0].offsetWidth // force reflow
                    }
            
                    _.$element.addClass('in')
                
                    _.enforceFocus()
            
                    var e = $.Event('shown.hui.modal', { relatedTarget: _relatedTarget })
            
                    transition ?
                    _.$dialog // wait for modal to slide in
                        .one('bsTransitionEnd', function () {
                            _.$element.trigger('focus').trigger(e)
                        })
                        .emulateTransitionEnd(_.options.TRANSITION_DURATION) :
                        _.$element.trigger('focus').trigger(e)
                    })
            },
            hide : function (e) {
                var _ = this;
                if (e) e.preventDefault()
                e = $.Event('hide.hui.modal')
            
                _.$element.trigger(e)
            
                if (!_.isShown || e.isDefaultPrevented()) return
            
                _.isShown = false
            
                _.escape()
                _.resize()
            
                $(document).off('focusin.hui.modal')
            
                _.$element
                    .removeClass('in')
                    .off('click.dismiss.hui.modal')
                    .off('mouseup.dismiss.hui.modal')
            
                    _.$dialog.off('mousedown.dismiss.hui.modal')
            
                $.support.transition && _.$element.hasClass('fade') ?
                _.$element
                        .one('bsTransitionEnd', $.proxy(_.hideModal, _))
                        .emulateTransitionEnd(Modal.TRANSITION_DURATION) :
                        _.hideModal();
                if(Default.isposition !== false){
                    if($(window).scrollTop() != _.scrollTop){
                        $(window).scrollTop(_.scrollTop);
                    }
                    
                }
            },
            enforceFocus : function () {
                var _ = this;
                $(document)
                    .off('focusin.hui.modal') // guard against infinite focus loop
                    .on('focusin.hui.modal', $.proxy(function (e) {
                        if ( document !== e.target && _.$element[0] !== e.target && !_.$element.has(e.target).length) {
                            _.$element.trigger('focus')
                        }
                    }, _))
            },            
            escape : function () {
                var _ = this;
                if (_.isShown && _.options.keyboard) {
                    _.$element.on('keydown.dismiss.hui.modal', $.proxy(function (e) {
                        e.which == 27 && _.hide()
                    }, _))
                } else if (!_.isShown) {
                    _.$element.off('keydown.dismiss.hui.modal')
                }
            },            
            resize : function () {
                var _ = this
                if (_.isShown) {
                    $(window).on('resize.hui.modal', $.proxy(_.handleUpdate, _))
                } else {
                    $(window).off('resize.hui.modal')
                }
            },            
            hideModal : function () {
                var _ = this;
                _.$element.hide()
                _.backdrop(function () {
                    _.$body.removeClass(_.options.modalOpen)
                    _.resetAdjustments()
                    _.resetScrollbar()
                    _.$element.trigger('hidden.hui.modal')
                })
            },            
            removeBackdrop : function () {
                var _ = this
                _.$backdrop && _.$backdrop.remove()
                _.$backdrop = null
            },            
            backdrop : function (callback) {
                var _ = this
                var animate = _.$element.hasClass('fade') ? 'fade' : ''
                var zIndex = (1030 + (10 * $('.ui-modal-backdrop').length));
                if (_.isShown && _.options.backdrop) {
                    var doAnimate = $.support.transition && animate
            
                    _.$backdrop = $(document.createElement('div'))
                        .addClass('ui-modal-backdrop ' + animate)
                        .css('z-index', zIndex)
                        .appendTo(_.$body)
                    _.$element.css('z-index', zIndex+1)
                    .on('click.dismiss.hui.modal', $.proxy(function (e) {
                        if (_.ignoreBackdropClick) {
                            _.ignoreBackdropClick = false
                            return
                        }
                        if (e.target !== e.currentTarget) return;
                        console.log("#########",Default.ignoreDimmedClick);
                        if (!Default.ignoreDimmedClick ) return;
                        _.options.backdrop == 'static' ? _.$element[0].focus() : _.hide()
                    }, _))
            
                    if (doAnimate) _.$backdrop[0].offsetWidth // force reflow
            
                    _.$backdrop.addClass('in')
                
                    if (!callback) return
            
                    doAnimate ?
                    _.$backdrop
                        .one('bsTransitionEnd', callback)
                        .emulateTransitionEnd(Modal.BACKDROP_TRANSITION_DURATION) : callback()
            
                } else if (!_.isShown && _.$backdrop) {
                    _.$backdrop.removeClass('in')
                
                    var callbackRemove = function () {
                        _.removeBackdrop()
                        callback && callback()
                    }
                    $.support.transition && _.$element.hasClass('fade') ?
                    _.$backdrop
                        .one('bsTransitionEnd', callbackRemove)
                        .emulateTransitionEnd(Modal.BACKDROP_TRANSITION_DURATION) :
                        callbackRemove()
            
                } else if (callback) {
                    callback()
                }
            },             
            handleUpdate : function () {
                this.adjustDialog()
            },
            
            adjustDialog : function () {
                var _ = this;
                var modalIsOverflowing = _.$element[0].scrollHeight > document.documentElement.clientHeight
            
                _.$element.css({
                    paddingLeft: !_.bodyIsOverflowing && modalIsOverflowing ? _.scrollbarWidth : '',
                    paddingRight: _.bodyIsOverflowing && !modalIsOverflowing ? _.scrollbarWidth : ''
                })
                // core.ui.disableScroll();
            },
            
            resetAdjustments : function () {
                var _ = this;
                _.$element.css({
                  paddingLeft: '',
                  paddingRight: ''
                })
                core.ui.enableScroll();
            },
            checkScrollbar : function () {
                var _ = this;
                var fullWindowWidth = window.innerWidth
                if (!fullWindowWidth) { // workaround for missing window.innerWidth in IE8
                    var documentElementRect = document.documentElement.getBoundingClientRect()
                    fullWindowWidth = documentElementRect.right - Math.abs(documentElementRect.left)
                }
                _.bodyIsOverflowing = document.body.clientWidth < fullWindowWidth
                _.scrollbarWidth = _.measureScrollbar()
            },            
            setScrollbar : function () {
                var _ = this;
                var bodyPad = parseInt((_.$body.css('padding-right') || 0), 10)
                _.originalBodyPad = document.body.style.paddingRight || ''
                var scrollbarWidth = _.scrollbarWidth
                if (_.bodyIsOverflowing) {
                    _.$body.css('padding-right', bodyPad + scrollbarWidth)
                    $(_.fixedContent).each(function (index, element) {
                        var actualPadding = element.style.paddingRight
                        var calculatedPadding = $(element).css('padding-right')
                        $(element)
                            .data('padding-right', actualPadding)
                            .css('padding-right', parseFloat(calculatedPadding) + scrollbarWidth + 'px')
                    })
                }
            },            
            resetScrollbar : function () {
                var _ = this;
                _.$body.css('padding-right', _.originalBodyPad)
                $(_.fixedContent).each(function (index, element) {
                    var padding = $(element).data('padding-right')
                    $(element).removeData('padding-right')
                    element.style.paddingRight = padding ? padding : ''
                })
            },
            measureScrollbar : function () { // thx walsh
                var _ = this;
                var scrollDiv = document.createElement('div')
                scrollDiv.className = 'modal-scrollbar-measure'
                _.$body.append(scrollDiv)
                var scrollbarWidth = scrollDiv.offsetWidth - scrollDiv.clientWidth
                _.$body[0].removeChild(scrollDiv)
                return scrollbarWidth
            }
        })
    ui.plugin(Modal);

    core.customAlert = function(obj){
		var DEFAULTS = {
				root : $(document.body),
				type : 'alert',
				size : "modal-sm",
				title : null,
				defaultBtn : '<button type="button" id="customMsgSubmit" class="btn">�뺤씤</button>',
				cancelBtn : '<button type="button" id="customMsgCancel" class="btn">痍⑥냼</button>',
				message : "",
				defaultCallback : null,
				cancelCallback : null,
				dismissCallback : null,
				btnClicked : false
			},
            options = $.extend({}, DEFAULTS, obj),
            btns = (options.type.indexOf('confirm') != -1) ? options.cancelBtn + options.defaultBtn : options.defaultBtn,
            modal = $('<div id="customAlertModal" class="ui-modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" />'),
            modalHTML = '';
        
		// 踰꾪듉�� �띿뒪�몃쭔 �꾨떖諛쏆쓣 寃쎌슦 踰꾪듉�쇰줈 留뚮뱾�댁쨲.
		options.defaultBtn = (options.defaultBtn.indexOf('<') != -1) ? 
			options.defaultBtn : '<button type="button" id="customMsgSubmit" class="btn">'+options.defaultBtn+'</button>';
		options.cancelBtn = (options.cancelBtn.indexOf('<') != -1) ? 
			options.cancelBtn : '<button type="button" id="customMsgCancel" class="btn">'+options.cancelBtn+'</button>';
        
		// 紐⑤떖 援ъ“ �앹꽦
		
        modalHTML += '<div class="ui-modal-dialog '+options.size+'" role="document">\
					<div class="modal-content">';

        // ���댄��� �덉쓣 寃쎌슦 援ъ“ �앹꽦
        modalHTML += (options.title !== null)? '<div class="modal-header">\
                <p class="modal-title">'+options.title+'</p>\
            </div>' : '';
        
        // 湲곕낯 紐⑤떖而⑦뀗痢� �앹꽦
        modalHTML +='<div class="modal-body">'+options.message+'</div>\
                            <div class="modal-footer">'+btns+'</div>\
                        </div>\
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">횞</span></button>\
                    </div>';		
        modal.addClass(options.type).append(modalHTML);
        modal.modal().show()
        // 湲곕낯 踰꾪듉 �대┃ �� 肄쒕갚
		modal.one('click.customAlert', '#customMsgSubmit', function (e) {
			var $this = $(this);
			var callback;
			options.btnClicked = true;
			if(options.defaultCallback) callback = options.defaultCallback(e);
			if (callback === false) return false;
			$this.closest('[role="dialog"]').modal().hide();
			
		})
		// 痍⑥냼 踰꾪듉 �대┃ �� 肄쒕갚
		.one('click.customAlert', '#customMsgCancel', function (e) {
			var $this = $(this);
            var callback;
			options.btnClicked = true;
            if(options.cancelCallback) callback = options.cancelCallback(e);
            
			if (callback === false) return false;
			$this.closest('[role="dialog"]').modal().hide();
        })
		.one('hidden.hui.modal', function (e) {
			let callback;
			if(!options.btnClicked && options.dismissCallback) callback = options.dismissCallback(e);
            modal.remove().off('customAlert');
		})
	}

    function clickHandler(target, option, el){
        var $target = target;
        var options;
        var btn = el;

        if(!$target.data('modal')){
            options  = $.extend({}, Default, $target.data(), option);
            $target[name](options);
        }
        $target[name]().show(btn);
        return false;
    }



    $(document).on('click.hui.modal.data-api', selector, function (e) {
        var $this = $(this)
        var href = $this.attr('href')
        var getDataValue = core.util.cssLiteralToObject($this.attr('data-modules-'+name));
        var _ignoreDimmedClick = getDataValue.ignoreDimmedClick;
        if(_ignoreDimmedClick != undefined && _ignoreDimmedClick != null) Default['ignoreDimmedClick'] = (_ignoreDimmedClick === true)?true:false;

        var target = getDataValue.target ||
          (href && href.replace(/.*(?=#[^\s]+$)/, '')) // strip for ie7
    
        var $target = $(document).find(target)
        var option = $target.data('modal') ? 'toggle' : $.extend({ remote: !/#/.test(href) && href }, $target.data(), $this.data())
        if ($this.is('a')) e.preventDefault()
    
        $target.one('show.hui.modal', function (showEvent) {
            if (showEvent.isDefaultPrevented()) return // only register focus restorer if modal will actually get shown
            $target.one('hidden.hul.modal', function () {
                $this.is(':visible') && $this.trigger('focus')
            })
        });

        clickHandler($target, option, this)
    })
})(window[LIB_NAME], jQuery);

/**
 * @name window popup
 * @selector [data-modules-winpopup]'
 */
;(function(core, $, undefined){
    var selector   = '[data-modules-winpopup]',
        name = 'winpopup';
    $(document).on('click.hui.winpopup.data-api', selector, function (e) {
        e.preventDefault();
        var $this = $(this),
            options =  core.util.cssLiteralToObject($this.attr('data-modules-'+name)),
            href = options.href || $this.attr('href')
        if(!href && href === ""){
            throw new Error("href媛믪� �꾩닔 �낅땲��.");;
        }
        core.util.openPopup(href, options)
    })
    .on('click.hui.winpopup.data-api', '#popWin [data-dismiss="window"]', function(){
        window.close();        
    })
    // .on('click.hui.winpopup.data-api', '#popWin [data-target="_blank"]', function(){
    //     parent.window.open("about:blank")
    // })
})(window[LIB_NAME], jQuery);


/**
 * @name scrollspy
 * @selector [data-modules-scrollspy]'
 */
;(function(core, $, undefined){
    "use strict";
    var win = $(window),
        template = '<a href="javascript:;" class="btn-more"><i class="icon"></i><span class="hiding" data-hidingText></span></a>',
        wrapper = '<div class="inset"></div>',
        Default = {
            scrollWrap : $(document),
            nav : null,
            conts : null,
            conts_pos : [],
            nav_pos : {},
            maxHeight : null,
            durration : 200,
            jumpnav : false,
            margin : 0,
            padding : 0,
            openPadding : 0,
            navHeight : null,
            openText : "�붾낫湲�",
            closeText : "�リ린",
            btn : $(template),
            wrapper : null,
            openImportant : false,
            alSize : null,
            scrollObserver : null,
            currentPos : 0
        },
        activeClass = 'fixed',
        name = "scrollspy",
        ui = core.ui,
        Widget = ui.Widget,
        Scrollspy = Widget.extend({
            name : name,
            init : function (element, config){
                var _ = this;
                var options = _.options = $.extend({}, Default, config);
                _.element = $(element);
                _.element.height(_.element.children().height())
                Widget.fn.init.call(_, element, options);
                _.options.nav = _.element.find('.ui-spynav a');
                _.options.conts = [];
                _.options.btn.find('[data-hidingText]').text(_.options.openText)
                _.options.maxHeight = $('body').prop('scrollHeight') - $(window).height();
                _._getContPos();
                if(_.options.navHeight !== null){
                    _._setNavHeight();
                }
                var nav_length = _.element.find('.ui-spynav>li').length;
                if(_.options.alSize !== null && nav_length % _.options.alSize !== 0  ){
                    _._setAlItems();
                }
                _._bindEvent();

                _.element.before("<div class='scroll-observer' />");
                _.options.scrollObserver = $(".scroll-observer");

                //_.options.btn.click();
            },
            _bindEvent : function(){
                var _ = this;
                var wrap = _.options.scrollWrap;
                // _.options.btn
                _.options.btn.on('click', function(){
                    _.spynavToggle();
                });

                $(window).on('load scroll', function(){
                    _._scrollCheck(wrap.scrollTop());
                    _.options.maxHeight = $('body').prop('scrollHeight') - $(window).height();
                    _._getContPos();
                });

                $(window).on('load resize', function(){
                    _.options.maxHeight = $('body').prop('scrollHeight') - $(window).height();
                    _._getContPos();
                });

                _.options.nav.on('click', function(e){
                    e.preventDefault();
                    _._getContPos();
                    var index = $(this).parent().index();
                    _.options.jumpnav = true;
                    $('html, body').stop().animate({scrollTop : _.options.conts[index] +1}, _.options.durration, function(){
                        _.options.jumpnav = false;
                        $(window).trigger('scroll');
                    });
                    return false;
                });
            },
            _scrollCheck : function (pos){
                const _=this;

                let max = _.options.conts.length,
                    i;
                // �ㅽ겕濡� �꾩튂 蹂� �몃뜳�� 諛섑솚
                for (i = 0 ; i < max ; i++){
                    if (_.options.conts[i] >= pos) {
                        i-=1;
                        break;
                    }
                };

                if(!_.options.jumpnav){
                    if (i == max || (_.options.maxHeight) <= pos){
                        _._activesNav(max-1);
                    }else{
                        if(i >= 0){
                            _._activesNav(i);
                        }else if(i < 0){
                            _._activesNav(0);
                        }
                    }
                }
                _._navPos(pos);
            },
            _navPos : function (pos){
                var _ = this;
                //var navPos = _.element.offset().top - _.options.margin;
                var navPos = _.options.scrollObserver.offset().top - _.options.margin;

                if (pos >= navPos ) {
                    _.element.addClass('fixed');
                }else{
                    _.element.removeClass('fixed');
                }
            },
            _activesNav : function (n){
                var _ = this;
                var navLists = _.options.nav.parent('li'),
                    activeIndex = _.options.nav.parent('li.ui-active').index(),
                    pos = navLists.eq(n).position().top + navLists.eq(n).height();

                _.options.currentPos = navLists.eq(n).position().top;

                var target = _.element.find('.ui-spynav');
                if(!_.options.openImportant && (navLists.eq(n).position().top != ((target.outerHeight() - navLists.eq(n).height()) - 1) || (target.outerHeight() - navLists.eq(n).height()))){
                    if(target.outerHeight() - _.options.nav.parent('li').outerHeight() != _.options.currentPos){
                        target.css({ marginTop : -_.options.currentPos });
                    } else {
                        target.css({ marginTop : -_.options.currentPos + _.options.nav.parent('li').outerHeight() });
                    }
                }

                if (activeIndex != n && activeIndex == -1){
                    navLists.eq(n).addClass('ui-active');
                }else if(activeIndex != n){
                    navLists.eq(n).addClass('ui-active');
                    navLists.eq(activeIndex).removeClass('ui-active');
                };
            },
            _getContPos : function () {
                var _ = this;
                _.options.conts = [];
                _.options.nav.each(function(n){
                    _.options.conts.push($(this.hash))
                })
                for (var i = 0; i < _.options.conts.length; i++) {
                    var pos = _.options.conts[i].offset().top - _.options.padding;
                    _.options.conts[i] = pos;
                }
            },
            _setNavHeight : function(){
                var _ = this;
                var innerCont = _.element.find('.ui-spynav');

                if(innerCont.outerHeight() > _.options.navHeight){
                    _.options.openPadding = innerCont.outerHeight() - _.options.navHeight;
                    innerCont.wrap(wrapper);
                    _.options.wrapper = _.element.find('.inset');
                    _.options.wrapper.css({"height":_.options.navHeight+"px", "overflow":"hidden"})
                    _.element.children().append(_.options.btn);
                    _.element.height(_.options.navHeight)
                }
            },
            _setAlItems : function(){
                var _ = this;
                var nav_length = _.element.find('.ui-spynav>li').length;
                var count = _.options.alSize - (nav_length % _.options.alSize);

                var html = "";
                for (var i =0; i < count; i++) {
                    html+='<li role="presentation"></li>'
                }
                var target = _.element.find('.ui-spynav')
                target.append(html)
            },
            spynavToggle : function(){
                var _ = this;
                var target = _.element.find('.ui-spynav');

                //if(_.options.openImportant) return;
                if(_.options.wrapper.height() > _.options.navHeight){
                    _.options.openImportant = false;

                    if(target.outerHeight() - _.options.nav.parent('li').outerHeight() != _.options.currentPos){
                        target.css({ marginTop : -_.options.currentPos });
                    } else {
                        target.css({ marginTop : -_.options.currentPos + _.options.nav.parent('li').outerHeight() });
                    }

                    _.options.wrapper.height(_.options.navHeight)
                    _.element
                        .removeClass('ui-active')
                        .height(_.options.navHeight);
                    _.options.btn.find('[data-hidingText]').text(_.options.openText);
                    _.options.padding -= _.options.openPadding;
                }else{
                    _.options.openImportant = true;

                    target.removeAttr("style");

                    _.options.wrapper.height('auto');

                    _.element
                        .addClass('ui-active')
                        .height(_.options.wrapper.height());

                    _.options.btn.find('[data-hidingText]').text(_.options.closeText)
                    _.options.padding += _.options.openPadding;
                }
                //_._getContPos();
            },
            reposition : function(){
                var _ = this;
                _.element.trigger('scroll');
                //_.options.openImportant = false;
                if( _.options.navHeight !== null && _.element.hasClass('ui-active') ){
                    _.spynavToggle();
                }
            }

        })
    ui.plugin(Scrollspy);
})(window[LIB_NAME], jQuery);


/**
 * @name moreview
 * @selector [data-modules-moreview]'
 */
;(function(core, $, undefined){
    "use strict";
    var win = $(window),
    Default = {
        height : 60,
        openText : "�붾낫湲�",
        closeText : "�リ린",
        hiddenClass : 'ui-hidden'
        
    },
    activeClass = 'ui-active',
    namespace = ".moreview",
    name = "moreview",
    ui = core.ui,
    Widget = ui.Widget,
    Moreview = Widget.extend({
		name : name,
		init : function (element, config){
			var _ = this;
			var options = _.options = $.extend({}, Default, config);
            Widget.fn.init.call(_, element, options);
            _.element = $(element);
            _.create();
        },
        _bindEvents : function (){
			var _ = this;
			var btn = _.element.find('[data-button]');
			btn.on('click'+namespace, function(){
				var $this = $(this);
				if(_.element.hasClass(activeClass)){
					_.element.removeClass(activeClass);
					$this.find('>.ui-text').text(_.options.openText);
				}else{
					_.element.addClass(activeClass);
					$this.find('>.ui-text').text(_.options.closeText);
				}
			})
        },
        create : function(){
            var _ = this;
            var btn = _.element.find('[data-button]');
            btn.off(namespace);
            _.element.removeClass(_.options.hiddenClass);
            setTimeout(function(){
                if(_.element.find('.ui-inset').outerHeight()>_.options.height){
                    _.element.addClass(_.options.hiddenClass);
                    _._bindEvents()
                }
            }, 0)
            
        }
	})
    ui.plugin(Moreview);
})(window[LIB_NAME], jQuery);


/**
 * @name starRating
 * @selector [data-modules-starRating]'
 */
;(function(core, $, undefined){
    "use strict";
    var win = $(window),
    forEach = Array.prototype.forEach,
    Default = {
        fixedClass : 'fix',
        score : 1
    },
    activeClass = 'ui-active',
    name = "starRating",
    ui = core.ui,
    Widget = ui.Widget,
    StarRating = Widget.extend({
		name : name,
		init : function(element, config){
			var _ = this;
			
			var options = _.options = $.extend({}, Default, config);
			Widget.fn.init.call(_, element, options);
			_.element = $(element);
			var items = _.element.find('>.star');
			_.options.itemPosition = [];
			_.options.activeIndex = 0;
			_.options.isTouch = core.detect.isTouch;
			forEach.call(items, function (item, i) {
				_.options.itemPosition.push(item.offsetLeft);
				if($(item).hasClass(_.options.fixedClass)){
					_.options.activeIndex = $(item).index();
				}
			})

			_._bindEvents()
		},
		_bindEvents : function(){
			var _ = this;
			if (_.options.isTouch) {
				_.element.on("touchstart", function(e){
					e.preventDefault();
				})
				.on("touchmove", function(e){
					e.preventDefault();
					var target= $(this).find('>.star');
					var pageX = e.touches[0].pageX - this.offsetLeft;
					_._getPageX(pageX);
				})
				.on("touchend", function(e){
					e.preventDefault();
					var target = $(this).find('>.star'),
						pageX = e.originalEvent.changedTouches[0].pageX - this.offsetLeft,
						index = _._getPageX(pageX);
					target.removeClass(_.options.fixedClass);
					target.eq(index).addClass(_.options.fixedClass);
				})
			}else{
				_.element.on("mouseenter", '.star', function(e){
					e.preventDefault();
					var target = $(this),
						index = target.index();
					_.rating(index);
				})
				.on("mouseleave", function(e){
					e.preventDefault();
					var targetIndex = $(this).find('>.star.fix').index();
					_.rating(targetIndex);
				})
				.on("click", '.star', function(e){
					e.preventDefault();
					var target = $(this);
					target.siblings().removeClass(_.options.fixedClass);
					target.addClass(_.options.fixedClass)
				});
			}			
		},
		_getPageX : function(x){
			var _ = this;
			var i;
			for (i = 0; i < _.options.itemPosition.length; i++) {
				var maxIndex = i+1;
				if( _.options.itemPosition[i] <= x && _.options.itemPosition[maxIndex] >= x){
					_.rating(i);
					break;
				}else if(i >= _.options.itemPosition.length-1){
					_.rating(i);
					break;
				}else if(x <= 0){
					_.rating(0);
					break;
				}
			}
			return i;
		},
		rating : function(index){
			var _ = this;
			var target = _.element.find('>.star'),
				scoreTxt = _.element.find('>.num');
			forEach.call(target, function (item, i) {
				if (index >= i ){
					_.options.activeIndex = i;
                    item.classList.add(activeClass);
                    if(_.options.score < 1){
                        scoreTxt.text(parseFloat(_.options.score*(i+1)).toFixed(1))
                    }else{
                        scoreTxt.text(parseInt(_.options.score*(i+1)))
                    }
					
				}else{
					_.options.activeIndex = i;
					item.classList.remove(activeClass);
				}
			})
		}
	})
    ui.plugin(StarRating);
})(window[LIB_NAME], jQuery);


/**
 * @name menus
 * @selector [data-modules-menus]'
 */
// $('[data-modules-menus]').menus('create')
;(function(core, $, undefined){
    "use strict";
    var win = $(window),
    forEach = Array.prototype.forEach,
    activeClass = 'ui-active',
    Default = {
        buttomAlign: true,
        activeClass : activeClass
    },
    
    name = "menus",
    namespace = ".menus",
    ui = core.ui,
    Widget = ui.Widget,
    Menus = Widget.extend({
		name : name,
		init : function(element, config){
			var _ = this;
			
			var options = _.options = $.extend({}, Default, config);
			Widget.fn.init.call(_, element, options);
            _.element = $(element);
			_._bindEvents();
		},
		_bindEvents : function(){
            var _ = this;
            _.element.off(namespace).on('mouseenter'+namespace, '[data-menu]', function(e){
                var $this = $(this);
                var target = $this.find(' > [data-submenu]');
                if(target.length > 0){
                    $this.addClass(_.options.activeClass);
                    if(_.options.buttomAlign){
                        _.setPos(target);
                    }                    
                }
            })
            .on('mouseleave'+namespace, '[data-menu]', function(e){
                var $this = $(this);
                var target = $this.find(' > [data-submenu]');
                if(target.length > 0){
                    $this.removeClass(_.options.activeClass);
                    target.removeAttr('style');
                }
            })
        },
        setPos : function(target){
            var _ = this;
            var height = _.element.offset().top +  _.element.outerHeight();
            var menuHeight = target.offset().top + target.outerHeight();
            if(height < menuHeight){
                target.css({"transform":"translateY("+(height - menuHeight)+"px)"})
            }
        }

	})
    ui.plugin(Menus);
})(window[LIB_NAME], jQuery);



/**
 * @name classesToggle
 * @selector [data-modules-classesToggle]'
 */
// $('[data-modules-classesToggle]').toggleClass('create')
;(function(core, $, undefined){
    "use strict";
    var win = $(window),
    forEach = Array.prototype.forEach,
    Default = {},
    name = "classesToggle",
    namespace = ".classesToggle",
    ui = core.ui,
    Widget = ui.Widget,
    ClassesToggle = Widget.extend({
		name : name,
		init : function(element, config){
			var _ = this;
			var options = _.options = $.extend({}, Default, config);
			Widget.fn.init.call(_, element, options);
            _.element = $(element);
            _.options.classLists = _.options.classLists.split("|")
            _._bindEvents();
		},
		_bindEvents : function(){
			var _ = this;
			_.element.on("click", _.toggleClasses.bind(_))
        },
        toggleClasses : function(e){
            alert();
            e.preventDefault();
            var _ = this,
                $this = _.element[0],
                classes = $this.classList,
                count = _._checkClass(classes);
            if(_.options.classLists.length === 0) return false;
            if (_.options.classLists.length === 1){
                _._toggleClass($this);
            }else{
                if(count === _.options.classLists.length-1){
                    $this.classList.remove(_.options.classLists[_.options.classLists.length-1]);
                    $this.classList.add(_.options.classLists[0]);
                }else if(count === null){
                    $this.classList.add(_.options.classLists[0]);
                }else{
                    $this.classList.remove(_.options.classLists[count]);
                    $this.classList.add(_.options.classLists[count+1]);	
                }
            }
        },
		_toggleClass : function(el){
			var _ = this;
			el.classList.toggle(_.options.classLists[0]);
		},
		_checkClass : function(classLists){
			var _ = this;
			var count = -1;
			for (var i = 0; i < classLists.length; i++) {
				for (var j = 0; j < _.options.classLists.length; j++) {
					if(classLists[i] == _.options.classLists[j]){
						count = j;
						break;
					}else{
						count = null;
					}
				}
			}
			return count;
		}
    })
    ui.plugin(ClassesToggle);
})(window[LIB_NAME], jQuery);


/**
 * @name scrollTab
 * @selector [data-modules-scrollTab]'
 */
;(function(core, $, undefined){
    "use strict";
    var win = $(window),
    forEach = Array.prototype.forEach,
    template = '<div class="scrolltab-btns">\
        <button type="button" class="tab-control prev-tab"><span>�댁쟾</span></button>\
        <button type="button" class="tab-control next-tab"><span>�ㅼ쓬</span></button>\
    </div>',
    Default = {
        class : null,
        activeIndex : 0,
        activity : null,
        prevDisabled : 'prev-disabled',
        nextDisabled : 'next-disabled',
        innerPadding : 0,
        type : 'tab',
        speed : 300,
        align:'left',
        btns : template
    },
    name = "scrollTab",
    namespace = ".scrollTab",
    activeClass = 'ui-active',
    ui = core.ui,
    Widget = ui.Widget,
    ScrollTab = Widget.extend({
		name : name,
		init : function(element, config){
			var _ = this;
			var options = _.options = $.extend({}, Default, config);
			Widget.fn.init.call(_, element, options);
            _.element = $(element);
            _.element.wrap('<div class="scroll-tab '+((_.options.class)?_.options.class:'')+'"><div class="inner-scroll"></div></div>');
            _.options.wrap = _.element.closest('.scroll-tab');
			_.options.inner = _.element.closest('.inner-scroll');
            _.options.tablist = _.element.find('[role="presentation"]');
            _.options.wrap.append(_.options.btns);
            _.options.wrapperPadding = parseInt(_.options.wrap.css('padding-left')) + parseInt(_.options.wrap.css('padding-right'));
            _._bindEvents();
            _.isActive();
            _._checkBtn()
            // 留곹겕 ���낆씪 寃쎌슦 泥섎━
            if(_.options.tablist.find('a[data-modules-tab]').length === 0){
                _.options.type = 'link';
            }
		},
		_bindEvents : function(){
			var _ = this;
			$(window).on('resize'+namespace +' load'+namespace, function(){
                // _.refresh()
                // _.isActive();
            });
            _.options.wrap.on('shown.hui.tab', 'a[data-modules-tab]', function(){
				_.options.activeIndex = $(this).closest('li').index();
                _._checkBtn();
                if(_.options.align === 'center'){
                    _._actionsCenter();
                }else{
                    _._actionsLeft();
                }
			})
			_.options.wrap.on('click'+namespace +' dbclick'+namespace, 'button.tab-control:not(".disabled")', function(){
                var $this = $(this);
                // 湲곕낯 �뺤옣 ��
                if(_.options.type === 'tab'){
                    if ($this.hasClass('prev-tab') && _.options.activeIndex > 0 ) {
                        _.options.activeIndex = _.options.activeIndex-1	
                    }else if($this.hasClass('next-tab') && _.options.activeIndex < _.options.tablist.length){
                        _.options.activeIndex = _.options.activeIndex+1
                    }
                    _.options.tablist.eq(_.options.activeIndex).children('a').tab('show');

                // 蹂��� 耳��댁뒪 留곹겕 �대┃ �� 寃쎌슦
                }else if(_.options.type === 'link'){
                    if ($this.hasClass('prev-tab')) {
                        
                        if((_.options.activeIndex - _.options.align ) >= 0){
                            _.options.activeIndex = _.options.activeIndex - _.options.align;
                            // 泥ル쾲吏� �щ씪�대뱶 泥댄겕
                            if( _.options.activeIndex < _.options.align ) {
                                _.options.activeIndex = 0
                            }
                        }
                    }else if($this.hasClass('next-tab')){
                        if((_.options.activeIndex + _.options.align ) < _.options.tablist.length){
                            _.options.activeIndex = _.options.activeIndex + _.options.align;
                            // 留덉�留� �щ씪�대뱶 泥댄겕
                            if( (_.options.tablist.length - 1 - _.options.activeIndex ) < _.options.align ) {
                                _.options.activeIndex = _.options.tablist.length -1
                            }
                        }
                    }
                    _._actionsLeft();
                }
                
                
                console.log();
                _._checkBtn()
			});
        },
        _checkBtn: function(){
            var _ = this;
            if(!_.options.activity) return;
			if(_.options.activeIndex == 0){
				_.options.wrap.find('.tab-control').removeClass('disabled');
				_.options.wrap.find('.prev-tab').addClass('disabled');
				_.options.wrap.removeClass(_.options.nextDisabled).addClass(_.options.prevDisabled);
			}else if(_.options.activeIndex == (_.options.tablist.length-1)){
				_.options.wrap.find('.tab-control').removeClass('disabled');
                _.options.wrap.find('.next-tab').addClass('disabled');
                _.options.wrap.removeClass(_.options.prevDisabled).addClass(_.options.nextDisabled);
			}else{
                _.options.wrap.find('.tab-control').removeClass('disabled');
                _.options.wrap.removeClass(_.options.prevDisabled).removeClass(_.options.nextDisabled);
			}
		},
        isActive: function(){
            var _ = this,
                tabWidth = 0,
                tabPos = [];
            
            forEach.call(_.options.tablist, function (item, i) {
                if(item.classList.contains(activeClass)) _.options.activeIndex = i;
                if(window.getComputedStyle(item).boxSizing == 'border-box'){
                    tabWidth+= parseFloat(window.getComputedStyle(item).width) + parseFloat(window.getComputedStyle(item).marginLeft) + parseFloat(window.getComputedStyle(item).marginRight);
                }else{
                    tabWidth+= parseFloat(window.getComputedStyle(item).width) + parseFloat(window.getComputedStyle(item).paddingLeft) + parseFloat(window.getComputedStyle(item).paddingRight) + parseFloat(window.getComputedStyle(item).borderLeftWidth) + parseFloat(window.getComputedStyle(item).borderRightWidth) + parseFloat(window.getComputedStyle(item).marginLeft) + parseFloat(window.getComputedStyle(item).marginRight);
                }
                tabPos.push(tabWidth)
            });
            _.element.css('width', tabWidth + 'px');
            
            if(tabWidth > _.options.inner.outerWidth()){
                _.options.wrap.addClass(activeClass);
                _.options.activity = true;
                // if(_.options.type === 'link'){
                    for (var j = 0; j < tabPos.length; j++) {
                        if(tabPos[j] > _.options.inner.outerWidth()){
                            _.options.align = j
                            break;
                        }
                    }
                // }
                
            }else{
                _.options.wrap.removeClass(activeClass);
                _.options.activity = false;
            }
        },
        _actionsLeft: function(){            
			var _ = this,
			    ini = _.options.inner,
			    el = _.options.tablist.eq(_.options.activeIndex),
			    contsWidth = ini.width() - (_.options.innerPadding *2),
			    scr = ini[0].scrollLeft,
                elPos = Math.ceil(el.position().left + el.width());
			if (_.options.activity) {
				if ((elPos) > contsWidth + _.options.innerPadding ){
                    ini.animate({scrollLeft: scr + el.position().left  - _.options.innerPadding}, _.options.speed);                    
					return;
				}else if(el.position().left < _.options.innerPadding){
                    ini.animate({scrollLeft: scr - contsWidth  - _.options.innerPadding - _.options.wrapperPadding  + el.position().left + el.outerWidth()}, 300);
					return;
                };
			}
        },
        _actionsCenter: function(){
			var _ = this,
			    ini = _.options.inner,
			    el = _.options.tablist.eq(_.options.activeIndex),
			    contsWidth = ini.width(),
			    scr = ini[0].scrollLeft,
                elPos = Math.ceil(el.position().left + el.width()),
                center = (contsWidth - el.width())/2,
                scrollPos = el.position().left - center + scr
            ini.animate({scrollLeft: scrollPos}, _.options.speed);
        },
		refresh: function(){
			const _ = this;
			_.options.tablist = _.element.find('[role="presentation"]');
			_.isActive();
			_._actions();
		}
    })
    ui.plugin(ScrollTab);
})(window[LIB_NAME], jQuery);

/**
 * @name tooltip
 * @selector [data-modules-tooltip]'
 */

;(function(core, $, undefined){
    "use strict";
    var win = $(window),
    forEach = Array.prototype.forEach,
    closeBtnTemplate = '<button class="btn-close"><i class="icon"></i><span class="hiding">�リ린</span></button>',
    Default = {
        type : 'click', // click | hover
        href : null,
        closeBtn : true,
        toggle : false
    },
    name = "tooltip",
    namespace = ".tooltip",
    activeClass = 'ui-active',
    ui = core.ui,
    Widget = ui.Widget,
    Tooltip = Widget.extend({
		name : name,
		init : function(element, config){
			var _ = this;
			var options = _.options = $.extend({}, Default, config);
			Widget.fn.init.call(_, element, options);
            _.element = $(element);
            _.selector = $(_.element.attr('href'));
            if (!_.element.attr('href') && _.options.href !== null) _.selector = $(_.options.href);
            
            if(_.options.closeBtn) _._setCloseBtn();

            _._bindEvents();
		},
		_bindEvents : function(){
            var _ = this;
            switch (_.options.type) {
                case 'click':{
                    _.element.on('click'+namespace, _.show.bind(_))
                    break;
                }
                case 'hover':{
                    _.element.on('mouseenter'+namespace, _.show.bind(_))
                    _.element.on('mouseleave'+namespace, _.hide.bind(_))
                    _.selector.on('mouseenter'+namespace, _.show.bind(_))
                    _.selector.on('mouseleave'+namespace, _.hide.bind(_))
                    break;
                }
                default:{
                    break;
                }
            }
            
            _.selector.on('click'+namespace, '.btn-close', _.hide.bind(_))
        },
        show : function(e){
            var _ = this;
            e.preventDefault();
            if(_.options.toggle && _.element.hasClass(activeClass)){
                _.hide();
                return;
            }
            _.element.addClass(activeClass);
            _.selector.addClass(activeClass);
        },
        hide : function(){
            var _ = this;
            _.element.removeClass(activeClass);
            _.selector.removeClass(activeClass);
        },
        _setCloseBtn : function(){
            var _ = this;
            _.selector.append(closeBtnTemplate)
        }
    })
    ui.plugin(Tooltip);
})(window[LIB_NAME], jQuery);

/**
 * @name customTooltip
 * @selector [data-modules-customTooltip]'
 */

;(function(core, $, undefined){
    "use strict";
    var win = $(window),
    forEach = Array.prototype.forEach,
    closeBtnTemplate = '<button class="btn-close"><i class="icon"></i><span class="hiding">�リ린</span></button>',
    Default = {
        type : 'click', // click | hover
        href : null,
        closeBtn : true,
        toggle : false,
        left:0,
        top:0,
    },
    name = "customTooltip",
    namespace = ".customTooltip",
    activeClass = 'ui-active',
    ui = core.ui,
    Widget = ui.Widget,
    CustomTooltip = Widget.extend({
		name : name,
		init : function(element, config){
			var _ = this;
			var options = _.options = $.extend({}, Default, config);
			Widget.fn.init.call(_, element, options);
            _.element = $(element);
            _.selector = $(_.element.attr('href'));
            if (!_.element.attr('href') && _.options.href !== null) _.selector = $(_.options.href);
            
            if(_.options.closeBtn) _._setCloseBtn();

            //var customOption = core.util.cssLiteralToObject(_.element.attr("data-modules-customTooltip"));
            //Default.left = customOption.left || Math.round(_.element.position().left);
            //Default.top = customOption.top || Math.round(_.element.position().top) + _.element.height();

            _.setSelector();
            _._bindEvents();
		},
		_bindEvents : function(){
            var _ = this;
            switch (_.options.type) {
                case 'click':{
                    _.element.on('click'+namespace, _.show.bind(_))
                    break;
                }
                case 'hover':{
                    _.element.on('mouseenter'+namespace, _.show.bind(_))
                    _.element.on('mouseleave'+namespace, _.hide.bind(_))
                    _.selector.on('mouseenter'+namespace, _.show.bind(_))
                    _.selector.on('mouseleave'+namespace, _.hide.bind(_))
                    break;
                }
                default:{
                    break;
                }
            }
            
            _.selector.on('click'+namespace, '.btn-close', _.hide.bind(_))
        },
        setSelector : function(){
            var _ = this;
            var _l = _.options.left || Math.round(_.element.position().left);
            var _t = _.options.top || Math.round(_.element.position().top) + _.element.height();
            _.selector.css("left",_l);
            _.selector.css("top",_t);
        },
        show : function(e){
            var _ = this;
            e.preventDefault();
            if(_.options.toggle && _.element.hasClass(activeClass)){
                _.hide();
                return;
            }
            _.element.addClass(activeClass);
            _.selector.addClass(activeClass);
        },
        hide : function(){
            var _ = this;
            _.element.removeClass(activeClass);
            _.selector.removeClass(activeClass);
        },
        _setCloseBtn : function(){
            var _ = this;
            _.selector.append(closeBtnTemplate)
        }
    })
    ui.plugin(CustomTooltip);
})(window[LIB_NAME], jQuery);


/**
 * @name scrollItems
 * @selector [data-modules-scrollItems]'
 */

;(function(core, $, undefined){
    "use strict";
    var win = $(window),
    forEach = Array.prototype.forEach,
    Default = {
        align: 0,
        activeClass : 'ui-active',
        scrollToShow : 1,
        btnControl : false
    },
    template = '<div class="scrollitems-btns">\
        <button type="button" class="ui-item-control prev-tab"><span>�댁쟾</span></button>\
        <button type="button" class="ui-item-control next-tab"><span>�ㅼ쓬</span></button>\
    </div>',
    name = "scrollItems",
    namespace = ".scrollItems",
    activeClass = 'ui-active',
    isApp = core.detect.isApp,
    ui = core.ui,
    Widget = ui.Widget,
    ScrollItems = Widget.extend({
		name : name,
		init : function(element, config){
			var _ = this;
			var options = _.options = $.extend({}, Default, config);
			Widget.fn.init.call(_, element, options);
            _.element = $(element);
            _.wrap;
            _.btns = null;
            _.index = null;
            _.activeIndex = 0;
            _.options.activeClass = (_.options.activeClass !== undefined) ?_.options.activeClass:activeClass
            if(_.options.btnControl){
                _.element.wrap("<div class='ui-scitems-wrap' />");
                _.wrap = _.element.closest('.ui-scitems-wrap');
                _.wrap.append(template);
                _.btns = _.wrap.find('.scrollitems-btns');
                _.index = 0;
            }
            // console.log(_.options.activeClass);
            _._bindEvents();
		},
		_bindEvents : function(){
            var _ = this;
            
            !_.btns || _.btns.on('click dbclick', '.ui-item-control', function(){
                var $this = $(this);
                var navLength = _.element.find('.ui-nav').length;
                var prevBtn = $this.hasClass('prev-tab');
                if(prevBtn && _.wrap.hasClass('prev-disabled')){
                    // console.log('first');
                    return;
                }else if(!prevBtn && _.wrap.hasClass('next-disabled')){
                    // console.log('last');
                    return;
                }
                
                if(prevBtn){
                    _.index--
                }else{
                    _.index++
                }

                console.log("######",navLength);
                console.log("######",_.index);
                
                if(_.index < 0){
                    _.index = 0;
                    return false;
                }else if(_.index >= Math.ceil(navLength / _.options.scrollToShow)){
                    _.index = Math.ceil(navLength / _.options.scrollToShow) - 1;
                    return false;
                }

                _._goActive(_.index * _.options.scrollToShow, undefined, true)
            })
            _.element.on('click', '.ui-nav', _.activeItem.bind(_))
            .on('scroll', function(){
                
                var $this = $(this);
                var scrollLeft = $this.scrollLeft();

                var wrap = _.wrap || $this; 
                if(scrollLeft === 0){
                    wrap.removeClass('next-disabled')
                    wrap.addClass('prev-disabled');
                }else if(Math.round(scrollLeft + $this[0].offsetWidth) >= ($this[0].scrollWidth-4)){
                    wrap.removeClass('prev-disabled');
                    wrap.addClass('next-disabled');
                }else{
                    wrap.removeClass('prev-disabled');
                    wrap.removeClass('next-disabled')
                }
                
            })
            .on('touchstart', function(){
                if(isApp && window.AndroidJS !== undefined) window.AndroidJS.setPagingDrag("false");
            })
            .on('touchend', function(){
                if(isApp && window.AndroidJS !== undefined) window.AndroidJS.setPagingDrag("true");
            })
            .trigger('scroll')

            setTimeout(function(){
                var initEvent = $.Event('init'+namespace, {
                    relatedTarget: _.element.find('.ui-nav'+'.'+activeClass)
                })
                _.element.trigger(initEvent);
                _.initActiveItem();
            },0)
        },
        activeItem : function(e){
            var _ = this,
                $this = $(e.currentTarget),
                eType = e.type,
                ani = true,
                activeEvent = $.Event('active'+namespace, {
                    relatedTarget: $this
                });
            $this.activeItem(_.options.activeClass);
            _.element.trigger(activeEvent);
            if(!_.options.btnControl) _._goActive($this.index(), eType, ani);
        },
        initActiveItem : function(){
            var _ = this,
                index = _.element.find('.ui-nav'+'.'+activeClass).index(),
                ani = false;
            if(index < 0) return;
            if(_.options.btnControl){
                index = parseInt(index / _.options.scrollToShow);
                _._goActive(index * _.options.scrollToShow, undefined, ani );
                _.index = index;
            }else{
                _._goActive(index);
                _.activeIndex = index;
            }
        },
        goActive : function(n){
            var _ = this;
            var $this = _.element.find('.ui-nav').eq(n);
            var duration = 300,
                scrollEvent = $.Event('scrollEnd'+namespace, {
                    relatedTarget: $this
                });
            $this.activeItem(_.options.activeClass);
            var left = $this.position().left+_.element.scrollLeft()-_.options.padding;
            _.element.stop().animate({scrollLeft:left},duration, function(){
                _.element.trigger(scrollEvent);
            })
        },
        _goActive : function(n, eType, ani){
            var _ = this;
            var $this = _.element.find('.ui-nav').eq(n);
            var duration = ani ? 300 : 0;
            if(_.activeIndex != $this.index() && !_.btns){   
                // $this.activeItem(_.options.activeClass);
                _.activeIndex = n;
            }else if(!_.btns && eType === undefined){
                return;
            }
            if(typeof _.options.align === 'number'){
                _.options.padding = $this.outerWidth() * _.options.align
            }else if(typeof _.options.align === 'string'){
                if(_.options.align === 'center'){
                    _.options.padding = (_.element.outerWidth()/2) - ($this.outerWidth()/2);
                }else if(_.options.align === 'left'){
                    // _.options.padding = 0
                }
            }
            var left = $this.position().left+_.element.scrollLeft()-_.options.padding;
            _.element.stop().animate({scrollLeft:left},duration)
        }
    })
    ui.plugin(ScrollItems);
})(window[LIB_NAME], jQuery);


/**
 * @name imageViewer
 * @selector [data-modules-imageViewer]'
 */

;(function(core, $, undefined){
    "use strict";
    var win = $(window),
    forEach = Array.prototype.forEach,
    Default = {
        zoom: .5,
        magnification : .03,
        activeClass : 'ui-active',
        minimumZoom : .3,
        maximumZoom : 1
    },
    name = "imageViewer",
    namespace = ".imageViewer",
    activeClass = 'ui-active',
    isApp = core.detect.isApp,
    ui = core.ui,
    Widget = ui.Widget,
    ImageViewer = Widget.extend({
		name : name,
		init : function(element, config){
			var _ = this;
			var options = _.options = $.extend({}, Default, config);
			Widget.fn.init.call(_, element, options);
            _.element = $(element);
            _.width = _.element.outerWidth();
            _.height = _.element.outerHeight();
            _.zoom =  _.options.zoom
            _.angleWidth = _.width * _.zoom;
            _.angleHeight = _.height * _.zoom;
            _.rectAngle = $('<div class="ui-angle">');
            _.element.append(_.rectAngle);
            _.isOver = null;
            _.viewercontent = $(document).find('[data-viewercontent]')
            _._bindEvents();
		},
		_bindEvents : function(){
            var _ = this;
            _.element
            .on('mouseenter', '[data-item]', function(e){
                // �뚯뒪�몄��댁뒪 ID INTA_6.6.18_001 �� ���� ����. 湲곕뒫 �곸슜 蹂대쪟
                // if($(this).closest('.slick-slider').length !== 0 && $(this).closest('.slick-slider').hasClass('issliding') ) return;
                _.isOver = true;
                var w = _.angleWidth =_.width * _.zoom,
                    h = _.angleHeight = _.height * _.zoom;
                _._showRectAngle();
                _._setAngleSize(w, h);
            })
            .on('mouseleave', function(e){
                _.isOver = false;
                _._hideRectAngle();
                _.zoom = _.options.zoom
            })
            .on('mousewheel DOMMouseScroll', function(e){
                var wheelPos = e.originalEvent.wheelDelta ? e.originalEvent.wheelDelta / 10 : (e.originalEvent.detail || e.originalEvent.deltaY)/3,
                    x, y;
                if(wheelPos < 0){
                    _.zoom-=_.options.magnification;
                }else{
                    _.zoom+=_.options.magnification;
                }
                if(_.zoom <= _.options.minimumZoom) _.zoom = _.options.minimumZoom;
                if(_.zoom >= _.options.maximumZoom) _.zoom = _.options.maximumZoom;
                var w = _.angleWidth =_.width * _.zoom;
                var h = _.angleHeight = _.height * _.zoom;
                x = _._getPageX(e.pageX);
                y = _._getPageY(e.pageY);
                _._setAngleSize(w, h);
                _._changeAnglePosition(x, y);
                if(_.isOver) return false;
            })

            $(document).on('mousemove', function(e){
                if(!_.isOver) return;
                var x = _._getPageX(e.pageX)
                var y = _._getPageY(e.pageY)
                _._changeAnglePosition(x, y);
            })
        },
        _changeAnglePosition : function(x, y){
            var _ = this;
            _.rectAngle.css({"top":y+"px", "left":x+"px"})
            $('.viewer-image').css({"transform":"translate(-"+x/_.zoom+"px, -"+y/_.zoom+"px)"})
        },
        _showRectAngle : function(){
            var _ = this;
            var src = _.element.find('.slick-active [data-item]').attr('data-outputsrc')
            _.rectAngle.show();
            _.viewercontent.addClass(activeClass);
            _.viewercontent.append('<div class="viewer-image"><img src="'+src+'"></div>');
        },
        _hideRectAngle : function(){
            var _ = this;
            _.rectAngle.hide()
            _.viewercontent.removeClass(activeClass);
            _.viewercontent.find('.viewer-image').remove();
        },
        _setAngleSize : function(w, h){
            var _ = this;
            _.rectAngle.css({"width":w+"px", "height":h+"px"})
            $('.viewer-image').css({"width":(_.width /_.zoom)+"px", "height":(_.height /_.zoom)+"px"})
        },
        _getPageX : function(n){
            var _ = this,
                x = n - _.element.offset().left-4 - (_.angleWidth/2),
                maximun = x + _.angleWidth,
                pos = 0;
            if(x >= 0){
                if(maximun >=_.width){
                    pos = _.width - _.angleWidth;
                }else{
                    pos = n - _.element.offset().left-4 - (_.angleWidth/2)
                }
            }
            return pos;
        },
        _getPageY : function(n){
            var _ = this,
                y = n - _.element.offset().top-4 - (_.angleHeight/2),
                maximun = y + _.angleHeight,
                pos = 0;
            if(y >= 0){
                if(maximun >=_.height){
                    pos = _.height - _.angleHeight;
                }else{
                    pos = n - _.element.offset().top-4 - (_.angleHeight/2)
                }
            }
            return pos;
        }
    })
    ui.plugin(ImageViewer);
})(window[LIB_NAME], jQuery);





/**
 * @name commonUi
 * @selector $('body')
 */
;(function(core, $, undefined){
    "use strict";
    var Default = {
        activeClass : "ui-active",
        subMenuCheckClass : "hasSub",
        activeGnb : null,
        DURATIONS : 500,
        randomBackground: '[data-background]',
        randomBackgroundSet: '[data-bgset]',
        randomClass: '[data-randomclass]'
    },
    doc = $(document),
    forEach = Array.prototype.forEach,
    win = $(window),
    NAME = "commonUi",
    objectProto = Object.prototype,
    hasOwn = objectProto.hasOwnProperty,
    ui = core.ui,
    Widget = ui.Widget,
    LIBRAYLISTS = {
        slick : {
            el : '[data-modules-slick]',
            name : "slick",
            default : {
                arrows:true,
                dots: true,
                infinite: false,
                useCSS:false
            }
        },
        // customScroll : {
        //     el : '[data-modules-customScroll]',
        //     name : "mCustomScrollbar",
        //     default : {
        //         theme:"dark-thin",
        //         scrollInertia:500
        //     }
        // },
        // tooltip : {
        //     el : '[data-modules-tooltip]',
        //     name : "tooltip"
        // },
        // cascadingGrid : {
        //     el : '[data-modules-cascadingGrid]',
        //     name : "cascadingGrid"
        // },
        // classesToggle : {
        //     el : '[data-modules-classesToggle]',
        //     name : "classesToggle"
        // },
        // starRating : {
        //     el : '[data-modules-starRating]',
        //     name : "starRating"
        // },
        
        menus : {
            el : '[data-modules-menus]',
            name : "menus"
        },
        sticky : {
            el : '[data-modules-sticky]',
            name : "sticky"
        },
        customtoggle : {
            el : '[data-modules-customtoggle]',
            name : "customtoggle"
        },
        cascadingGrid : {
            el : '[data-modules-cascadingGrid]',
            name : "cascadingGrid"
        },
        collapse : {
            el : '[data-modules-collapse]',
            name : "collapse"
        },
        tab : {
            el : '[data-modules-tab]',
            name : "tab"
        },
        selectbox : {
            el : '[data-modules-selectbox]',
            name : "selectbox"
        },
        scrollspy : {
            el : '[data-modules-scrollspy]',
            name : "scrollspy"
        },
        moreview : {
            el : '[data-modules-moreview]',
            name : "moreview"
        },
        starRating : {
            el : '[data-modules-starRating]',
            name : "starRating"
        },
        classesToggle : {
            el : '[data-modules-classesToggle]',
            name : "classesToggle"
        },
        scrollTab : {
            el : '[data-modules-scrollTab]',
            name : "scrollTab"
        },
        tooltip : {
            el : '[data-modules-tooltip]',
            name : "tooltip"
        },
        customTooltip : {
            el : '[data-modules-customTooltip]',
            name : "customTooltip"
        },
        video : {
            el : '[data-modules-video]',
            name : "video"
        },
        scrollItems : {
            el : '[data-modules-scrollItems]',
            name : "scrollItems"
        },
        imageViewer : {
            el : '[data-modules-imageViewer]',
            name : "imageViewer"
        }
        
        // overflowText : {
        //     el : '[data-modules-overflowText]',
        //     name : "overflowText"
        // },
        // jumpTo : {
        //     el : '[data-modules-jumpTo]',
        //     name : "jumpTo"
        // },
        // imageView : {
        //     el : '[data-modules-imageView]',
        //     name : "imageView"
        // }
        
    },
    commonUi = Widget.extend({
		name : NAME,
		init : function (element, config){
			var _ = this;
			var options = _.options = $.extend({}, Default, config);
			_.element = $(element);
			Widget.fn.init.call(_, element, options);
			_.options.progressBar = $('#progressBar');
			_.mediaInfo = core.detect.mediaInfo.mode
			_._bindEvents();
            _.currentImgLoaded(_.mediaInfo);
            _.initLibray();
            _.fullScreenEl = {};
			



			// if(_.element.find('#bannerWrap').length !== 0) _.commonBanner();

			// hash 泥댄겕�섏뿬 
			if (window.location.hash !== ""){
				_.openTab();
            }
            // console.log($(_.options.randomBackground).length)
            // if($(_.options.randomBackground).length > 0){
            //     _.randomBackground($(_.options.randomBackground));
            // }

            // if($(_.options.randomClass).length > 0){
            //     _.randomClass($(_.options.randomClass));
            // }



            win.on('hashchange', _.openTab);


            // // ���� node �좏깮
            // var target = document.getElementById('wrap');
            
            // // 媛먯떆�� �몄뒪�댁뒪 留뚮뱾湲�
            // var observer = new MutationObserver(function(mutations) {
            //     mutations.forEach(function(mutation) {
            //         console.log(mutation);
            //         console.log($(mutation.addedNodes[0]));
            //         $('body').commonUi('initLibray')
            //     });    
            // });
            
            // // 媛먯떆�먯쓽 �ㅼ젙:
            // // characterData: true,
            // var config = { attributes: true, characterData: true, childList: true, subtree: true };
            
            // // 媛먯떆�� �듭뀡 �ы븿, ���� �몃뱶�� �꾨떖
            // observer.observe(target, config);



		},
		// hideQuickMenu
		_bindEvents : function (){
			var _ = this;
			win.on('changeSize', function(e, mode){
				_.mediaInfo = mode;
				_.currentImgLoaded(mode);
			});
			win.on('load', function(e){
				_.initLibray();				
            })


			_.element.on('click', '#bgDim', function(e){
				var $this = $(this);
                var target = $this.data('callFn');
                var selector = $('[data-fn-layer].'+_.options.activeClass);
				if(!target) {
					core.ui.hideDim();
					return false;
                };
                

                var method = "hide"+target;
				// if (!hasOwn.call(method, _)) throw new Error("硫붿꽌�쒓� 議댁옱�섏� �딆뒿�덈떎.");
				_[method](e, selector);
            });

            // a 留곹겕 �덉뿉 �덈뒗 踰꾪듉 罹≪퀜
            $('[data-alink-inner]').on('click', function(e){
                var $this = $(this),
                    target = $this.data('alinkInner'),
                    clicker = $(e.target);
                if(clicker.closest('.'+target).length !== 0){
                    alert('�먯꽭�� 蹂닿린')
                    return false;
                }
            })


            // �곹뭹�곸꽭 �숈쁺�� �뚮줈�� 
            $(document)
            .on('click', '[data-btn-top]', function(e){
                e.preventDefault();
                $(document).scrollTop(0);
            })

            // 而ㅼ뒪�� �곗씠�� �덉씠�댄뙘�� �몄텧
            doc.on('click', '[data-fn-layer]', function(e){
                e.preventDefault();
                var $this = $(this);
                var fn = $this.data('fnLayer');
                _[fn](e, $this);
            })
        },
        showAllBrand : function(){
            var _ = this;
            var layer = _.element.find('#allViewLayer');
            layer.show();
        },
        hideAllBrand : function(){
            var _ = this;
            var layer = _.element.find('#allViewLayer');
            layer.hide();
        },
        showSearchLayer: function(e, el){
            var _ = this;
            var $this = el;
            var target = $this.closest('.search-wrap');
            $this.addClass(_.options.activeClass)
            target.addClass(_.options.activeClass);
            core.ui.showDim('SearchLayer');
        },
        hideSearchLayer: function(e, el){
            var _ = this;
            var $this = el;
            var target = $this.closest('.search-wrap');
            $this.removeClass(_.options.activeClass)
            target.removeClass(_.options.activeClass);
            core.ui.hideDim();
        },
		closeLayers : function(elm, layer){

			var _ = this;
			var el = elm;
			var target = layer;
			_["hide"+target](target);
			$('[data-callayer='+target+']').removeClass(_.options.activeClass);
			
		},
        _fixedTab : function(){
            var _ = this;
            var el = _.element.find('#stickyTab');
            var fixedHeader = _.element.find('.header').outerHeight() || 0;
            var videoFloat = _.element.find('#videoFloat').outerHeight() || 0;
            var padding = videoFloat + fixedHeader;
            if(videoFloat > 0) _.element.addClass('in_video_float');
            
            if(el.length !== 0){
                if(el.data('sticky') !== undefined){
                    el.sticky().posRefresh(-(padding));
                }else{
                    el.sticky({
                        padding:-(videoFloat + fixedHeader)
                    })
                }
            }
        },
		openTab : function(){
			var selector = $('a[href="'+window.location.hash+'"]');
			if (selector.data('modulesTab') ==='tab') selector.tab('show');
		},
		initLibray : function(){
			var _ = this;
            var LibrayLists = LIBRAYLISTS;
            var stickyTab = $('#stickyTab');
            if($(_.options.randomBackground).length > 0){
                _.randomBackground($(_.options.randomBackground));
            }

            if($(_.options.randomBackgroundSet).length > 0){
                _.randomBackgroundSet($(_.options.randomBackgroundSet));
            }

            if($(_.options.randomClass).length > 0){
                _.randomClass($(_.options.randomClass));
            }

            for (var i in LibrayLists) {
                if (LibrayLists.hasOwnProperty(i)) {
                    try{
                        _.setOptions(LibrayLists[i]);
                    }
                    catch(e){
                        console.log(e.message);
                    }
                }
            }
            

            
            // 紐⑤컮�� �ㅽ떚�ㅽ뀦 由ы봽�섏돩
            if(stickyTab.length !== 0){
                if( stickyTab.data('sticky') !== undefined){
                    stickyTab.sticky('posRefresh');
                }else{
                    _._fixedTab()
                }
            }
            
            /* 怨듯넻 simpleSlider 援ы쁽 start */
            UI.simpleSlider = $('.wing-slide').simpleSlider({
                'items' : '> ul > li',
                'current' : '.numbering .current',
                'total' : '.numbering .total',
            })
            /* 怨듯넻 simpleSlider 援ы쁽 end */

            /* �щ씪�대뱶 �좊땲硫붿씠�� �곸슜 (留덉��� 鍮꾩��쇱쁺��, 紐낆젅 �쒗뵆由� 鍮꾩��쇱쁺��) */
            $('.ui-visualimg').each(function(i,e){
                var $img = $(this).find('img');
                var parent = $img.closest('.visual-wrap');

                if( $img.eq(0).length > 0){
                    if( !parent.hasClass('ui-active') ){
                        parent.addClass('ui-active');
                        var size = 3000;
                        if($img[0].clientWidth < size ) {
                            parent.addClass('ui-noani')
                        }else{
                            parent.addClass('ui-ani');
                            var clone;
                            if($img.parent().hasClass("ui-visualimg")){
                                clone = $img.clone();
                                $img.parent().append(clone);
                            }
                            else{
                                clone = $img.parent().clone();
                                $img.parents(".ui-visualimg").append(clone);
                            }
                        }
                    }
                }else{
                    var nextHeight = $(this).next().find("img").height();
                    if( $(this).height() < nextHeight ){
                        $(this).height(nextHeight);
                    }
                }
            })
            return _;
        },
        initLibrary : function(){
			var _ = this;
			_.initLibray();
		},
		setOptions : function(obj){
			/**
			 * @options : enableMode ["web", "tablet", "mobile"];
			 */
			var el = $(obj.el),
				defaultOption = obj.default,
				name = obj.name;
			el.each(function(){
                var $this = $(this);
				var $this = $(this),
                    option = $.extend({}, defaultOption),
                    elOpt = $this.attr('data-modules-'+obj.name),
					options = elOpt !== "" ? $.extend(option, core.util.cssLiteralToObject(elOpt)): option,
					mode = core.detect.mediaInfo.mode,
					setMode = (!options.hasOwnProperty('enableMode')) || (function(options, mode){
						var checkMode = options['enableMode'];
						if (checkMode !== null) {
							checkMode = (checkMode.indexOf(mode) !== -1)? true : false;
							
						}else{
							checkMode = true;
						}
						return checkMode;
                    })(options, mode);
                
				if(!$this.parents('pre').length /* 吏꾪뻾�� �뚯뒪 蹂닿린 ��. */ && setMode && !$this.data('active')) {
					$this[name](options);
                    $this.data('active', true);	//�뚮윭洹몄씤 �곸슜 �쒖꽦�� 泥댄겕
                    
                    if(name == "slick"){
                        $this.on('beforeChange', function (event, slick, currentSlide, nextSlide) {
                            $(this).addClass('slider-transitioning');
                        });

                        $this.on('afterChange', function (event, slick, currentSlide) {
                            $(this).removeClass('slider-transitioning');
                        });
                    }
				}
			});
		},
		currentImgLoaded : function(mode){
			var d = mode,
				lists = [].slice.call(document.querySelectorAll('.current_img'));
			// lists.forEach(el=>{
			// 	var src = el.dataset[mode] || el.dataset['src'];
			// 	el.setAttribute('src', src)
            // });
            lists.forEach(function(el){
				var src = el.dataset[mode] || el.dataset['src'];
				el.setAttribute('src', src)
			});
		},
        listsPaging : function(lists, startIndex, pd){
            var _ = this;
            var list = _.element.find('#prdLists');
            var pages = list.find('#listPaging')
            var max = lists.length;
            var pos = [];
            var index = 0;
            var defaultButtom = pd;
            var namespace = '.paging'
            setPos();
            win.off(namespace)
            win.on('scroll'+namespace, function(e){
                var $this = $(this);
                var top = $this.scrollTop() + $this.outerHeight();
                var bottom = ($('.nav-tabbar.fixed').height() || 0) + defaultButtom;
                pages.data('sticky').options.padding = bottom;
                index = setPaging(top) + startIndex;
                pages.find('.ui-index').text(index);
                pages.css({"bottom":bottom+'px'})
                if(index !== 0){
                    pages
                    .removeClass('hide')
                    .removeClass('hidden');
                } 
            })
            .on("scrollstart"+namespace,function(){
                // console.log('dd');
                // if(index !== 0){
                //     pages
                //     .removeClass('hide')
                //     .removeClass('hidden');
                // } 
            })
            .on("scrollend"+namespace,function(){
                pages.addClass('hide');
            })
            .on('load'+namespace, function(){
                setPos();
            })
            .trigger('scroll'+namespace+' scrollstart'+namespace);

            if(pages.data('sticky') === undefined){
                pages.sticky({
                    align:'bottom',
                    padding: defaultButtom,
                    breakPoint : list
                });
            }else{
                pages.data('sticky').options.padding = defaultButtom;                
            }
            
            function setPos(){
                pos = [];
                lists.each(function(n){
                    var top = $(this).offset().top + $(this).outerHeight();
                    pos.push(top);
                });
                pos.push($(document).outerHeight()+100);
            }

            function setPaging(top){
                var low = 0;
                var high = pos.length -1;
                var scTop = top;
                while(low <= high){
                    var mid = Math.floor((low+high)/2);
                    if( top <= pos[mid] && top >= pos[mid-1] ){
                        return mid;
                    }else if(top < pos[mid]){
                        high = mid - 1;
                        
                    }else{
                        low = mid + 1;
                    }
                }
                return 0;
            }
        },
        randomBackground : function(el){
            var _ = this;
            var target = el;
            forEach.call(target, function (item, i) {
                var $this = $(item)
                var colors = $this.data('background').split('|');
                var index = parseInt(Math.random() * colors.length)
                if($this.css('background-color') === 'rgba(0, 0, 0, 0)'){
                    $this.css('background', colors[index]);
                } 
                
            });
        },
        randomBackgroundSet : function(el){
            var _ = this;
            var target = el;
            forEach.call(target, function (item, i) {
                var $this = $(item);
                var colors = $this.data('bgset').split('|');
                var first = parseInt(Math.random() * colors.length);
                var childlen = $this.children('a').length;
                for(i=0;i<childlen;i++){
                    $this.children('a').eq(i).css('background', colors[(first+i)%colors.length]);
                }
            });
        },
        randomClass : function(el){
            var _ = this;
            var target = el;
            forEach.call(target, function (item, i) {
                var $this = $(item)
                var rClass = $this.data('randomclass').split('|');
                var index = parseInt(Math.random() * rClass.length);
                if($this.data('active')) return;
                if($this[0].classList !== '') {
                    forEach.call($this[0].classList, function(item, i){
                        $this.removeClass(rClass[rClass.indexOf($this[0].classList[i])])
                    })
                }
                $this.data('active', true);
                $this.addClass(rClass[index])
            });
        },
        toggleMenu : function(event,  el){
            var _ = this;
            var selector = el;
            var menu = $('[data-layer-sidemenu]');
            if(menu.hasClass(_.options.activeClass)){
                selector.removeClass(_.options.activeClass)
                menu
                .removeClass(_.options.activeClass);
                core.ui.hideDim();
            }else{
                selector.addClass(_.options.activeClass)
                menu
                .addClass(_.options.activeClass)
                core.ui.showDim('toggleMenu');
            }
        }
    })
    ui.plugin(commonUi);
	document.addEventListener('DOMContentLoaded', function(){
        $('body').commonUi();
        console.log('commonUi')
    });
    // win.on('load', function(){
    //     $('body').commonUi();
    // })
})(window[LIB_NAME], jQuery);
/* 
============================================================== UI 而댄룷�뚰듃 End
*/







/* common UI start ********************************************************************/

/* common UI - scrollManager start */
$.fn.scrollManager = function(option){
    var _self = this
    var $selector = $(this) 
    var _default = {
        name : 'global',
    }
    var _option = $.extend({}, _default, option)
    var _disabeld = false
    var name = _option['name'] ? '.'+_option['name'] : ''
    var customScroll = jQuery.Event('customScroll' + name);
    var customResize = jQuery.Event('customResize'+ name);
    var _timer = null

    // <!-- public method start
    /*
        disable : selector�� scroll, resize �대깽�� 諛쒖깮�� callback �ㅽ뻾�� 留됯퀬
        scrollbar瑜� 媛먯땅�덈떎.
    */
    this.disable = function(){
        _disabeld = true;
        if($selector[0] === window){
            $('body').addClass('hidden')
        } else {
            $selector.addClass('hidden')
        }
        return $selector
    }
    /*
        enable : selector�� scroll, resize �대깽�� 諛쒖깮�� callback �ㅽ뻾�� 留됱븯�� 寃껋쓣
        ��怨� scrollbar瑜� �ㅼ떆 蹂댁씠寃� �⑸땲��.
    */
   this.enable = function(){
        _disabeld = false
        if($selector[0] === window){
            $('body').removeClass('hidden')
        } else {
            $selector.removeClass('hidden')
        }
        return $selector
    }
    // public method end -->


    // <!-- event handling start

    /*
        scroll�� custom event瑜� 諛쒖깮�쒗궢�덈떎. customScroll + '.�ㅼ엫�ㅽ럹�댁뒪'
        direction(�곹븯 �ㅽ겕濡� �뺣낫)瑜� �ы븿�� event媛앹껜瑜� param�쇰줈 蹂대궡以띾땲��. 
    */
    $selector.on('scroll',function(e){
        if(_disabeld) {
            return
        }
        customScroll.scrollTop = $selector.scrollTop()
        if(e.originalEvent){
            if(e.originalEvent.deltaY < 10){
                customScroll.delta = 1;
                customScroll.direction = "up";
            } else {
                customScroll.delta = -1;
                customScroll.direction = "down";
            }
            $(window).trigger(customScroll)
        }
        
    })

    /*
        resize�� custom event瑜� 諛쒖깮�쒗궢�덈떎. customResize + '.�ㅼ엫�ㅽ럹�댁뒪'
        200ms 媛꾧꺽�쇰줈 event throttle�� 援ы쁽�섏뼱�덉뒿�덈떎.
    */
    $selector.on('resize',function(e){
        if(_disabeld) {
            return
        }
        clearTimeout(_timer)
        _timer = setTimeout(function(){
            console.log('trigger resize')
            $(window).trigger(customResize)
        }, 200)
    })
    // event handling end -->

    return this
}
/* common UI - scrollManager end */

/* common UI - sticky start */
// $.fn.sticky = function(option){
//     var _self = this;
//     var $selector = $(_self)

//     var _default = {
//         top : 40,
//         speed : 500,
//     }
//     var _option = $.extend({}, _default, option)

//     var init = function(){
//         if(!$selector.length){
//             console.log('No elements. "' + _self + '"')
//         }
//         _self.initPosition()
//         _self.stick()
//     }

//     // <!-- public method start
//     /*
//         initPosition : sticky�좊븣 遺숈뼱�덉뼱�쇳븷 �꾩튂瑜� �ш퀎�고빀�덈떎. window媛� resize �좊븣留�
//         �대몢硫� �⑸땲��.
//     */
//     this.initPosition = function(){
//         var windowScrollTop = $(window).scrollTop()
//         var windowScrollLeft = $(window).scrollLeft()
//         var numReg = /\-?[0-9]{0,}/
//         // var $topBanner = $('.top-banner')
         
//         $selector.each(function(i,target){
//             $selector.removeClass('fixed').removeAttr('style')//�쇱떆�곸쑝濡� fixed瑜� �댁젣
//             var rect = target.getBoundingClientRect() //�붾㈃�곸쓽 �덈� �꾩튂 諛섑솚
//             var computedStyle = getComputedStyle(target) //style媛� 援ы븯湲�

//             //style媛� 湲곗��쇰줈 margin,padding 援ы븯湲�
//             var paddingTopNumber = parseInt(computedStyle.paddingTop.match(numReg)[0]);
//             var marginTopNumber = parseInt(computedStyle.marginTop.match(numReg)[0]);
//             var paddingLeftNumber = parseInt(computedStyle.paddingLeft.match(numReg)[0])
//             var marginLeftNumber = parseInt(computedStyle.marginLeft.match(numReg)[0])
//             var transformX = 0;

//             if(computedStyle.transform){//transform�쇰줈 蹂��뺣맂 媛� 援ы븯湲�
//                 transformX = parseInt(computedStyle.transform.split(',')[4])
//             }

//             target.dataset.top = rect.top + windowScrollTop + paddingTopNumber + marginTopNumber //+ $topBanner.height()
//             target.dataset.left = rect.left + windowScrollLeft - paddingLeftNumber - marginLeftNumber - transformX
//         })
//         _self.stick() //援ы븳 媛믪쑝濡� �ㅼ떆 sticky �щ� �먮떒
//     }

//     /*
//         stick : �꾩옱 window�� scrollTop媛믪쓣 援ы븯怨� 媛� 媛쒖껜�ㅼ쓽 sticky�섏뼱�쇳븯�붿� �먮퀎�⑸땲��.
//     */
//     this.stick = function(){
//         var scrollTop = $(window).scrollTop()
//         $selector.each(function(i, target){
//             var $target = $(target)
//             var top = parseInt($target.attr('data-top') || 0)
//             var left = parseInt(($target.attr('data-left') || 0) - $(window).scrollLeft())
//             var optionTop = parseInt(_option.top)

//             if(scrollTop + optionTop > top){
//                 $target
//                     .addClass('fixed')
//                     .css({
//                         top : optionTop,
//                         left : left,
//                     })
//             } else {
//                 $target
//                     .removeClass('fixed')
//                     .removeAttr('style')

//             }
//         })
//     }
//     // public method end -->

//     init()
//     return this
// }
/* common UI - sticky end */

/* common UI - topButtonTrigger start */
$.fn.topButtonTrigger = function(option){
    var _self = this;
    var $selector = $(_self)
    var _default = {
        top : 40,
        speed : 500,
    }
    var _option = $.extend({}, _default, option)

    $selector.on('click', function(e){
        e.stopPropagation()
        $('html,body').animate({ scrollTop: _option['top'] }, _option['speed']);
    })

    return this
}
/* common UI - topButtonTrigger end */

/* common UI - categoryNavigation start */
$.fn.categoryNavigation = function(option){
    var _self = this;
    var $selector = $(this) //.category-area

    var _default = {
        menuWrap : '.category-menu-wrap',
        btn : '.btn-category',
        mainList : '.category-list',
        contents : '.category-list-contents',
        index : 0,
    }
    var _option = $.extend({}, _default, option)
    var $menuWrap = $(_option["menuWrap"])
    var $mainMenu = $menuWrap.find(_option.mainList)
    var $menuList = $menuWrap.find(_option.mainList + ' li')
    var $contents = $(_option["contents"])
    var _index = _option["index"]

    var init = function(){
        if(!$selector.length){
            console.log('No elements. "' + _selector + '"')
        }
        onClickHandler()
        onMouseLeaveHandler()
        onMenuOverHandler()
    }

    var onClickHandler = function(){
        $selector.on('click', _option.btn, function(e){
            e.stopPropagation()
            if($menuWrap.is(':visible')){
                $menuWrap.hide()
            } else {
                $menuWrap.show()
                showMenuByIndex(_index)
                equalizeHeight(_index)
            }
        });
        $menuWrap.on('mouseleave', function(e){
            $(this).hide();
        })
    }

    var onMouseLeaveHandler = function(){
        $menuWrap.on('mouseleave', function(){
            // $menuWrap.hide()
        })
    }

    var onMenuOverHandler = function(){
        $menuList.on('mouseenter', function(e){
            var index = $(e.target).closest('li').index()
            showMenuByIndex(index)
            equalizeHeight(index)
        })
    }

    var showMenuByIndex = function(index){
        _index = index
        $menuList.removeClass('on').eq(_index).addClass('on')
        $contents.hide().eq(_index).show()
    }

    var equalizeHeight = function(index){
        $contents.hide();
        var target = $contents.eq(index),
            menu1 = target.find('.sub-category'),
            menu2 = target.find('.brand-category'),
            maintHeight = $mainMenu.outerHeight();
        target.height(maintHeight-2)
        $contents.eq(index).show();
        // if(menu1.length > 0 && !menu1.hasClass('ui-sorting')){
        //     clipMenu(menu1.eq(menu1.length-1))
        // }
        // if(menu2.length > 0 && !menu2.hasClass('ui-sorting')){
        //     clipMenu(menu2.eq(menu2.length-1))
        // }
        // console.log(menu2.length);    
    }

    var clipMenu = function(el){
        console.log('start');
        var menu = el,
            sortClass = 'ui-sorting',
            arrHtml = [],
            arrHeight = [],
            mainPos = $mainMenu.offset().top + $mainMenu.outerHeight();
        while ( menu.length !== 0 &&  (menu.outerHeight() + menu.offset().top) > mainPos  ) {
            arrHtml.unshift(menu.find('li:last-child').clone(true));
            arrHeight.unshift(menu.find('li:last-child').outerHeight());
            menu.find('li:last-child').remove();
            menu.addClass(sortClass)
        }
        if(arrHtml.length > 0){
            console.log('over');
            // var wrap = $('<div class="'+menu.attr('class')+'" />')
            // var aa = $('<ul>');
            // aa.append(arr);
            // wrap.append(aa);
            // menu.after(wrap);
            // console.log(arr);
            var height = 0;
            var cutArr = [];
            for (var i = 0; i < arrHeight.length; i++) {
                var nextHeight = (i+1 !== arrHeight.length) ? arrHeight[i+1] : 0;
                height+=arrHeight[i];
                console.log();
                if((height + nextHeight) > (mainPos - menu.offset().top) ){
                    cutArr.push(i);
                    height = 0;
                }
            }
            var wrap = $('<div class="'+menu.attr('class')+'" />')
            var aa = $('<ul>');
            aa.append(arrHtml);
            wrap.append(aa);
            menu.after(wrap);
            // console.log();
            // if(wrap.outerHeight() > 500){
            //     clipMenu(wrap)
            // }

            
            // if (cutArr.length === 0){
            //     var wrap = $('<div class="'+menu.attr('class')+'" />')
            //     var aa = $('<ul>');
            //     aa.append(arrHtml);
            //     wrap.append(aa);
            //     menu.after(wrap);
            // }else{
            //     cutArr.unshift(0)
            //     var wrap = [];
            //     var aa = [];
            //     for (var j = 0; j < cutArr.length; j++) {
            //         wrap[j] = $('<div class="'+menu.attr('class')+'" />')
            //         aa[j] = $('<ul>');
            //         if(j+1 !== cutArr.length ){
            //             for (var k = cutArr[j]; k < cutArr[j+1]; k++) {
            //                 aa[j].append(arrHtml[k])
            //                 // console.log(j +', ' + k);
            //             }
            //         }
            //         console.log('dsfdsfs');
            //         wrap[j].append(aa[j]);
            //         // menu.after(wrap);
            //     }
            //     // console.log();
            //     for (var l = 0; l < wrap.length; l++) {
            //         console.log(l);
            //         if(l == 0){
            //             menu.after(wrap[l])  
            //         }else{
            //             wrap[l-1].after(wrap[l])  
            //         }
            //     // console.log(wrap[l]);    // menu.after(wrap[l])   
            //     }
            // }
            
        }
        
        // console.log(menu.attr('class'));
    }

    init()

    return this
}
/* common UI - categoryNavigation end */

/* UIComponent.mobile.layerPopTrigger start */
$.fn.layerPopTrigger = function(option){
    var _default = {
        'ease' : 'swing',
        'speed' : 500,
        'closer' : '.lyclose',
        'beforeOpen' : null,
        'beforeClose' : null,
        'closeOpen' : null,
        'closeClose' : null,
    }
    var _option = $.extend({}, _default, option)

    return this.each(function(i, e){
        var $selector = $(e).closest("[data-target]");
        var target =  $selector.attr("data-target");
        var $target = $('.layer-popup'+'.'+target).eq(0) //�섎굹留� �좏깮
        var $popWrap = $target.children('div')
        var $formElements = $target.find('[tabindex], a, input, button')
        var $closer = $target.find(_option.closer);

        var init = function(){
            if(!$selector.length){
                console.log('No element. "' + _option['selector'] + '"')
            }
            onOpenHandler()
            onKeyHandler()
            onCloseHandler()
        }

        var onOpenHandler = function(){
            $selector.on('click', function(e){
                e.stopPropagation()

                var $el = $(this);
                if(target){
                    var beforeOpen = _option['beforeOpen'];
                    var afterOpen = _option['afterOpen'];
    
                    if(typeof beforeOpen === 'function'){
                        if(beforeOpen(e, target) === false){
                            //由ы꽩媛믪씠 false硫� �ㅽ뻾�섏� �딆쓬
                            return
                        }
                    }
    
                    $target
                        .fadeTo(_option['speed'], 1, _option['ease']);

                    $popWrap
                        .attr("tabindex", "0")
                        .focus()

                    if(typeof afterOpen === 'function'){
                        afterOpen(e, target)
                    }
                }
                return false;
            })
        }

        var onKeyHandler = function(e){
            $target.on('keydown', function(e){
                if(e.key === 'Tab'){
                    var firstForm = $popWrap[0]
                    var lastForm = $formElements[$formElements.length-1]
                    
                    if(e.shiftKey){//諛깊꺆
                        if(firstForm === e.target){
                            e.preventDefault()
                            lastForm.focus()
                        }
                    } else {//��
                        if(lastForm === e.target){
                            e.preventDefault()
                            firstForm.focus()
                        }
                    }
    
                }
            })
        }

        var onCloseHandler = function(){
            $closer.on('click', function(e){
                e.stopPropagation()
                var beforeClose = _option['beforeClose'];
                var afterClose = _option['afterClose'];
                
                if(typeof beforeClose === 'function'){
                    if(beforeClose(e, target) === false){
                        //由ы꽩媛믪씠 false硫� �ㅽ뻾�섏� �딆쓬
                        return
                    }
                }
    
                $target
                    .fadeOut(200)
                    .find(".layer")
                    .removeAttr("tabindex");

                window.setTimeout(function(){
                    $selector.trigger("focus")
                },500);
    
                if(typeof afterClose === 'function'){
                    afterClose(e, target)
                }

                return false;
            })
        }
        init()
    })
}
/* UIComponent.mobile.layerPopTrigger end */

/* common UI - simpleSlider start*/
$.fn.simpleSlider = function(option){
    var _default = {
        'index' : 0,
        'items' : '> div > ul > li',
        'current' : '.numbering .current',
        'total' : '.numbering .total',
        'prev' : '.btn-prev',
        'next' : '.btn-next',
    }
    var _option = $.extend({}, _default, option)

    return this.each(function(i,e){
        var $selector = $(e);
        var $items = $selector.find(_option.items)
        // console.log("$.fn.simpleSlider -> $items", $items)
        var _length = $items.length
        var _index = _option.index || 0

        var init = function(){
            onClickHandler()
            showItemByIndex(_option.index)
            setPaging(_index)
        }

        var onClickHandler = function(){
            $selector.on('click', _option.prev, function(e){
            console.log("onClickHandler -> e", e)
                e.stopPropagation()
                var prevIndex = (_length+_index-1)%_length
                showItemByIndex(prevIndex)
            })
            $selector.on('click', _option.next, function(e){
                e.stopPropagation()
                var nextIndex = (_index+1)%_length
                showItemByIndex(nextIndex)
            })
        }

        var setPaging = function(index){
            $selector.find(_option.current).text(index+1)
            $selector.find(_option.total).text(_length)
        }
        
        var showItemByIndex  = function(index){
            _index = index
            $items.hide().eq(index).show()
            setPaging(index)
        }

        init()
    })    
}
/* common UI - simpleSlider end*/

/* common UI - toggler start*/
$.fn.toggler = function(option){
    var _self = this;
    var _default = {
        'className' : 'on',
        'event' : 'click',
        'namespace' : '.toggler'
    }
    var _option = $.extend({}, _default, option)

    this.autoClose = function(){
        return _self.each(function(i, e){
            var $e = $(e);
            var data = $e.data()
            if(data.autoClose){
                var $target = $('.'+ data.toggleTarget)
                $target.removeClass(_option.className)
            }
        })
    }

    return this.each(function(i,e){
        var $e = $(e);
        var target = $e.data('toggleTarget')
        var $target = $('.'+target)

        var init = function(){
            onEventHandler()
        }

        var onEventHandler = function(){
            $e.on(_option.event, function(e){
                e.stopPropagation()
                // $target.toggleClass(_option.className)
                if($target.hasClass(_option.className)){
                    $target.removeClass(_option.className);
                    if($(this).data('autoClose')){
                        $(document).off(_option.namespace)
                    }
                }else{
                    $target.addClass(_option.className);
                    if($(this).data('autoClose')){
                        $(document).on('click'+_option.namespace, function(e){
                            var target = e.target;
                            if(!target.closest('.'+$target[0].classList[0])){
                                $target.removeClass(_option.className);
                            }
                        })
                    }
                }
            })
        }

        init()
    })
}
/* common UI - toggler end*/


//common UI Manager
var UI = UI || {};

$(function(){
    //test 
    // $('body').on('click', function(e){
    //     e.stopPropagation()
    //     UI.toggler.autoClose()
    // })
    /* 怨듯넻 scrollManager 援ы쁽 start */
    UI.windowScroll = $(window).scrollManager({
        name : 'global'
    })
    // UI.windowScroll.on('customScroll.global customResize.global', function(e){
    //     if(e.type === 'customScroll'){
    //         UI.sticky.stick()
    //     } if(e.type === 'customResize'){
    //         UI.sticky.initPosition()
    //     }
    // })
    /* 怨듯넻 scrollManager 援ы쁽 end */


    /* 怨듯넻 sticky 援ы쁽 start */
    // UI.sticky = $('.wing-banner').sticky({
    //     'top' : 40,
    // })
    /* 怨듯넻 sticky 援ы쁽 end */


    /* 怨듯넻 topButtonTrigger 援ы쁽 start */
    UI.topButtonTrigger = $('.btn-top a').topButtonTrigger({
        'top': 0,
        'speed' : 500
    })
    /* 怨듯넻 topButtonTrigger 援ы쁽 end */


    /* 怨듯넻 categoryNavigation 援ы쁽 start */
    if($('.category-area').length !== 0){
        UI.categoryNavigation = $('.category-area').categoryNavigation()
    }
    
    /* 怨듯넻 categoryNavigation 援ы쁽 end */

    /* 怨듯넻 layerPopTrigger 援ы쁽 start */
    UI.layerPopTrigger = $('.lyopen').layerPopTrigger({
        'closer' : '.lyclose',
        'beforeOpen' : function(e, target){
            console.log("beforeOpene :: ", e)
            console.log("beforeOpentarget :: ", target)
        },
        'beforeClose' : function(e, target){
            console.log("beforeClose e :: ", e)
            console.log("beforeClose target ::", target)
        },
    })
    /* 怨듯넻 layerPopTrigger 援ы쁽 end */


    /* 怨듯넻 simpleSlider 援ы쁽 start */
    UI.simpleSlider = $('.wing-slide').simpleSlider({
        'items' : '> ul > li',
        'current' : '.numbering .current',
        'total' : '.numbering .total',
    })
    /* 怨듯넻 simpleSlider 援ы쁽 end */


    

    //媛꾨떒 �대깽��
    $('.btn-quick-more').on('click', function(e){
        e.preventDefault()
        var $quickWrap = $(this).closest('.quick-menu-more')

        $quickWrap.toggleClass('on')
    })

    UI.toggler = $('[data-toggle-target]').toggler({
        className : 'on',
        event : 'click'
    })

    // 怨듯넻 �몃쾭
    $(document).on('mouseenter mouseleave', '.pdlist-wrap .pdthumb .thumb', function(e){
        var $this = $(this);
        var target = $this.closest('.pdthumb');
        var evType = e.type;
        if(e.type == 'mouseenter'){
            target.activeItem('ui-hover');
        }else if(e.type == 'mouseleave'){
            target.removeClass('ui-hover')
        }
    })
    .on('mouseenter', '.pdlist-wrap .pdthumb .hoverview', function(e){
        var $this = $(this);
        var target = $this.closest('.pdthumb');
        target.activeItem('ui-hover');
    })

})