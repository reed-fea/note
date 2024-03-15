-- app 表的添加语句
INSERT INTO `app` (`id`, `app_name`, `app_url`, `app_logo`, `app_keyword`, `app_copyright`, `app_style`, `app_description`, `app_pay`, `app_state`, `app_datetime`, `app_pay_date`, `app_dir`, `language`, `language_name`, `update_date`, `update_by`, `create_date`, `create_by`, `del`)
VALUES
	(1009, '擎朗智能全球官网', 'xxx', '[{\"path\":\"/upload/1011/appLogo/1704436869190.png\",\"url\":\"\",\"name\":\"\",\"uid\":\"\",\"status\":\"\"}]', '擎朗电话,擎朗机器人电话,上海擎朗智能科技有限公司电话', '<p>\n            COPYRIGHT © 2024 上海擎朗智能科技有限公司<a class=\"hover-underline\" href=\"https://beian.miit.gov.cn/#/Integrated/index\"\n              target=\"_blank\">沪ICP备10221484号-3</a>\n          </p>\n          <a class=\"footer-privacy hover-underline\" href=\"javascript:;\">隐私条款</a>', 'KEENON', '结合擎朗智能服务机器人产品特性和您的售后需求，我们为您提供多样化服务内容，用最适合您的服务方案和最优质的的服务质量，最大化提升机器人服务效率。', '', 0, NULL, '2019-11-17 00:00:00', 'zh', 'zh', '简体中文', '2024-01-29 19:37:55', '1635179220595421184', '2024-01-22 18:04:32', '', 0);

-- html_content_part 添加语句
INSERT INTO `html_content_part` (`language`, `app_id`, `header`, `news_header`, `footer`, `news_footer`)
VALUES
	('zh', 1009, '<!DOCTYPE html>\n<html lang=\"zh\">\n\n<head>\n  <meta charset=\"UTF-8\" />\n  <meta name=\"viewport\"\n    content=\"width=device-width,user-scalable=no,initial-scale=1.0, maximum-scale=0.1,minimum-scale=0.2\">\n  <meta name=\"keywords\"\n    content=\"{ms:global.keyword/}\">\n  <meta name=\"description\"\n    content=\"{ms:global.descrip/}\">\n  <link rel=\"shortcut icon\" type=\"image/png\"\n    href=\"https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/common/favicon.ico\" id=\"favicon\"\n    data-original-href=\" https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/common/favicon.ico\" />\n  <link rel=\"stylesheet\" href=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/layui/css/layui.css\">\n  <script src=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/layui/layui.js\"></script>\n  <title>{ms:global.name/}</title>\n  <!-- <script src=\"https://cdn.tailwindcss.com\"></script> -->\n  <script src=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/js/ScrollMagic.min.js\"></script>\n  <script src=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/js/TweenMax.min.js\"></script>\n  <script src=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/js/animation.gsap.js\"></script>\n  <script type=\"module\" src=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/js/index.js?v1\"></script>\n  <link rel=\"stylesheet\" href=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/scss/index.css?v4\">\n  <link href=\"https://vjs.zencdn.net/8.10.0/video-js.css\" rel=\"stylesheet\" />\n</head>\n\n<body>\n  <header class=\"header-wrap\">\n    <div class=\"header flex justify-between container\">\n      <div class=\"flex items-center flex-1\">\n        <a class=\"block logo-box flex-none\" href=\"{ms:global.url/}/index.html\" target=\"_self\">\n          <img src=\"https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/common/logo-gray.webp\" alt=\"\" />\n        </a>\n        <nav class=\"nav-one h-full flex flex-1\">\n          <ul class=\"h-full flex\">\n            {ms:channel flag=\"navbar\" type=\"nav\" order=\"asc\" orderby=\"sort\"}\n            <li class=\"h-full\">\n              <div class=\"a-box h-full flex items-center\">\n                <#if field.flag?contains(\"nav_solution\") || field.flag?contains(\"nav_product\")>\n                  <span class=\"cursor-pointer small-element\">${field.typetitle}</a>\n                <#else>\n                  <a class=\"small-element\" href=\"{ms:global.url/}${field.typelink}\"\n                    target=\"_self\">${field.typetitle}</a>\n                </#if>\n              </div>\n              <#if field.flag?contains(\"nav_solution\")>\n                <div class=\"nav-solution\">\n                  <div class=\"nav-solution-content\">\n                    <div class=\"nav-solution-wrap\">\n                      <div class=\"nav-solution-list flex items-center flex-wrap\">\n                        {ms:channel type=\'son\'}\n                        <div class=\"nav-solution-item flex items-center\">\n                          <div class=\"item-img-box\">\n                            <img class=\"pro-img\" src=\"${field.typelitpic}\" alt=\"\" />\n                          </div>\n                          <div class=\"item-text-box\">\n                            <h4>${field.typetitle}</h4>\n                              <!-- 餐饮行业 -->\n                              <p class=\"sub-title\">${field.typeshorttitle}</p>\n                            <a href=\"{ms:global.url/}${field.typelink}\" class=\"view-btn flex items-center justify-center\">查看方案</a>\n                          </div>\n                        </div>\n                        {/ms:channel}\n                      </div>\n                    </div>\n                  </div>\n                </div>\n              </#if>\n              <#if field.flag?contains(\"nav_product\")>\n                <div class=\"nav-product\">\n                  <div class=\"nav-product-wrap\">\n                    <div class=\"nav-product-series flex items-center flex-wrap\">\n                      {ms:channel type=\"son\"}\n                      <div class=\"left-item\">\n                        <#if field.flag?contains(\"nav_product_accessory\")>\n                          <a class=\"left-item-nav\" href=\"{ms:global.url/}${field.typelink}\">${field.typetitle}</a>\n                        <#else>\n                          <div class=\"left-item-lable\">${field.typetitle}</div>\n                        </#if>\n                        <div class=\"nav-product-box flex flex-wrap\">\n                          {ms:channel type=\"son\"}\n                          <a href=\"{ms:global.url/}${field.typelink}\"\n                            class=\"nav-product-item flex flex-col items-center\">\n                            <div class=\"pro-img-box\">\n                              <div class=\"pro-model\">\n                                ${field.typetitle}\n                                <#if field.flag?contains(\"nav_product_hot\")>\n                                  <div class=\"pro-tag\">\n                                    <div class=\"tag-text\">HOT</div>\n                                  </div>\n                                </#if>\n                                <#if field.flag?contains(\"nav_product_new\")>\n                                  <div class=\"pro-tag\">\n                                    <div class=\"tag-text\">NEW</div>\n                                  </div>\n                                </#if>\n                              </div>\n                              <img class=\"pro-img\" src=\"${field.typelitpic}\" alt=\"\" />\n                            </div>\n                            <p>${field.typeshorttitle}</p>\n                          </a>\n                          {/ms:channel}\n                        </div>\n                      </div>\n                      {/ms:channel}\n                    </div>\n                    <div class=\"nav-product-content flex-1\">\n                    </div>\n                  </div>\n                </div>\n              </#if>\n            </li>\n            {/ms:channel}\n          </ul>\n        </nav>\n      </div>\n      <div class=\"header-top-right flex items-center flex-none\">\n        ----------\n        <a class=\"ml-16 flex items-center\" href=\"tel:400-8335-808\">\n          <svg class=\"icon\" aria-hidden=\"true\">\n            <use xlink:href=\"#icon-dianhua\"></use>\n          </svg>\n          <p class=\"tel-text hover-underline\">400-8335-808</p>\n        </a>\n        <div class=\"flex items-center icon-btn-box ml-14 cursor-pointer language\">\n          <svg class=\"icon text-xl\" aria-hidden=\"true\">\n            <use xlink:href=\"#icon-website\"></use>\n          </svg>\n          <div class=\"i18n-text text-base\" id=\"current-language-text\">中文</div>\n          <div class=\"language-list\">\n            <div class=\"language-box\" id=\"language-toggle\">\n              <div class=\"language-item\" data-language=\"zh\">\n                <div class=\"language-gray\">\n                  <img src=\"https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/icon/country/Chinese.webp\">\n                </div>\n                <div class=\"language-text\">\n                  <span class=\"hover-underline\">中文</span>\n                </div>\n              </div>\n              <div class=\"language-item\" data-language=\"de\">\n                <div class=\"language-gray\">\n                  <img src=\"https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/icon/country/German.webp\">\n                </div>\n                <div class=\"language-text\">\n                  <span class=\"hover-underline\">German</span>\n                </div>\n              </div>\n              <div class=\"language-item\" data-language=\"en\">\n                <div class=\"language-gray\">\n                  <img src=\"https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/icon/country/English.webp\">\n                </div>\n                <div class=\"language-text\">\n                  <span class=\"hover-underline\">English</span>\n                </div>\n              </div>\n              <div class=\"language-item\" data-language=\"ar\">\n                <div class=\"language-gray\">\n                  <img src=\"https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/icon/country/Arabic.webp\">\n                </div>\n                <div class=\"language-text\">\n                  <span class=\"hover-underline\">Arabic</span>\n                </div>\n              </div>\n              <div class=\"language-item\" data-language=\"jp\">\n                <div class=\"language-gray\">\n                  <img\n                    src=\"https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/icon/country/Japanese.webp\">\n                </div>\n                <div class=\"language-text\">\n                  <span class=\"hover-underline\">Japanese</span>\n                </div>\n              </div>\n              <div class=\"language-item\">\n                <div class=\"language-gray\">\n                  <img src=\"https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/icon/country/Korean.webp\">\n                </div>\n                <div class=\"language-text\" data-language=\"ko\">\n                  <span class=\"hover-underline\">Korean</span>\n                </div>\n              </div>\n              <div class=\"language-item\" data-language=\"fr\">\n                <div class=\"language-gray\">\n                  <img src=\"https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/icon/country/French.webp\">\n                </div>\n                <div class=\"language-text\">\n                  <span class=\"hover-underline\">French</span>\n                </div>\n              </div>\n            </div>\n          </div>\n        </div>\n      </div>\n    </div>\n  </header>\n', '<!DOCTYPE html>\n<html lang=\"en\">\n\n<head>\n  <meta charset=\"UTF-8\" />\n  <meta name=\"viewport\"\n    content=\"width=device-width,user-scalable=no,initial-scale=1.0, maximum-scale=0.1,minimum-scale=0.2\">\n  <meta name=\"keywords\"\n    content=\"传菜机器人,擎朗,擎朗送餐机器人,送餐机器人,擎朗机器人,机器人送餐多少钱一台,餐厅机器人,消毒机器人,酒店机器人,擎朗智能机器人有限公司,迎宾机器人,导引机器人,医疗机器人\">\n  <meta name=\"description\"\n    content=\"上海擎朗智能科技有限公司是一家专业智能服务机器人公司，产品涵盖餐饮机器人、送餐机器人、消毒机器人、酒店机器人、迎宾机器人、商场机器人、室内配送机器人、快递机器人、讲解机器人、展馆机器人、银行机器人、营业厅机器人、机场机器人、政务机器人、引领机器人、导引机器人、医疗机器人等\">\n  <link rel=\"shortcut icon\" type=\"image/png\"\n    href=\"https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/common/favicon.ico\" id=\"favicon\"\n    data-original-href=\" https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/common/favicon.ico\" />\n  <link rel=\"stylesheet\" href=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/layui/css/layui.css\">\n  <script src=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/layui/layui.js\"></script>\n  <title>{ms:global.name/}</title>\n  <!-- <script src=\"https://cdn.tailwindcss.com\"></script> -->\n  <script src=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/js/ScrollMagic.min.js\"></script>\n  <script src=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/js/TweenMax.min.js\"></script>\n  <script src=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/js/animation.gsap.js\"></script>\n  <script type=\"module\" src=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/js/index.js\"></script>\n  <link rel=\"stylesheet\" href=\"https://keenon.oss-cn-shanghai.aliyuncs.com/assets/scss/index.css\">\n  <link href=\"https://vjs.zencdn.net/8.10.0/video-js.css\" rel=\"stylesheet\" />\n</head>\n\n<body>', '  <footer class=\"footer-wrap\">\n    <div class=\"container\">\n      <div class=\"footer-top w-full flex justify-between\">\n        {ms:channel flag=\"footer-nav\" type=\"level\" order=\"asc\" typeid=\"328\" orderby=\"sort\"}\n          <div class=\"footer-link-list\">\n            <div class=\"link-wrap\">\n              <a href=\"javascript:;\">${field.typetitle}</a>\n            </div>\n            {ms:channel type=\'son\'}\n              <div class=\"link-wrap\">\n                <a class=\"hover-underline\" href=\"{ms:global.url/}${field.typeurl}\">${field.typetitle}</a>\n              </div>\n            {/ms:channel}\n          </div>\n        {/ms:channel}\n      </div>\n      <div class=\"footer-bottom\">\n        <div class=\"footer-keenon flex justify-between\">\n          <a class=\"block footer-logo flex-none\" href=\"{ms:global.url/}/index.html\" target=\"_self\">\n            <img src=\"https://cyber-cors.oss-cn-shanghai.aliyuncs.com/keenon/website/common/footer-logo.webp\" alt=\"\" />\n          </a>\n          <div class=\"footer-icon-list flex flex-none items-center\">\n            {ms:channel flag=\"footer-icon\" type=\"level\" order=\"asc\" typeid=\"461\" orderby=\"sort\"}\n              <#if field.typelitpic>\n                <a class=\"footer-icon-item\" href=\"javascript:;\">\n                  <div class=\"code-box\">\n                    <img src=\"${field.typelitpic}\" alt=\"\" />\n                  </div>\n                  <img src=\"${field.typeico}\" alt=\"\" />\n                </a>\n                <#else>\n                  <a class=\"footer-icon-item\" href=\"${field.typeurl}\" target=\"_blank\">\n                    <img src=\"${field.typeico}\" alt=\"\" />\n                  </a>\n              </#if>\n            {/ms:channel}\n          </div>\n        </div>\n        <div class=\"footer-copyright-privacy flex items-center\">\n          {ms:global.copyright/}\n        </div>\n      </div>\n    </div>\n  </footer>\n  <script src=\"//at.alicdn.com/t/c/font_4174154_r14a74klyi.js\"></script>\n  <script src=\"https://vjs.zencdn.net/8.10.0/video.min.js\"></script>\n</body>\n</html>', '</body></html>');

-- 权限表添加
INSERT INTO `auth_client` (`client_id`, `client_secret`, `client_name`, `client_logo`, `client_desc`, `client_type`, `client_url`, `allow_url`, `contract_scope`, `code_mode`, `implicit_mode`, `password_mode`, `client_mode`, `access_token_timeout`, `refresh_token_timeout`, `client_token_timeout`, `past_client_token_timeout`, `logout_url`, `created_at`, `updated_at`)
VALUES
	('1015', '1009123', 'CMS-韩国站', NULL, '1', 'base', NULL, '*', NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 增加template表
SET @appid = 1009;
SET @language = 'zh';

INSERT INTO `templates` (`id`, `name`, `appid`, `content`, `content_new`, `config`, `config_new`, `page_type`, `type`, `language`, `preset_flag`, `create_by`, `create_date`, `update_by`, `update_date`, `del`, `checked`, `checked_remark`, `checked_by`)
VALUES
    (null, '首页', @appid, NULL, NULL, NULL, NULL, 1, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '产品系列', @appid, NULL, NULL, NULL, NULL, 2, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '申请试用', @appid, NULL, NULL, NULL, NULL, 3, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '解决方案', @appid, NULL, NULL, NULL, NULL, 4, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '关于我们', @appid, NULL, NULL, NULL, NULL, 5, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '客户案例', @appid, NULL, NULL, NULL, NULL, 6, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '空白', @appid, NULL, NULL, NULL, NULL, 7, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '新闻动态', @appid, NULL, NULL, NULL, NULL, 8, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '新闻详情', @appid, NULL, NULL, NULL, NULL, 12, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '立即咨询', @appid, NULL, NULL, NULL, NULL, 9, 2, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '申请试用按钮', @appid, NULL, NULL, NULL, NULL, 10, 2, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '下载产品资料', @appid, NULL, NULL, NULL, NULL, 11, 2, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '隐私政策', @appid, NULL, NULL, NULL, NULL, 13, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '配件列表', @appid, NULL, NULL, NULL, NULL, 14, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System'),
    (null, '配件详情', @appid, NULL, NULL, NULL, NULL, 15, 1, @language, 1, NULL, NOW(), NULL, NOW(), 0, 1, '', 'System');


-- permissions 库需要增加的权限
INSERT INTO `auth_client` (`client_id`, `client_secret`, `client_name`, `client_logo`, `client_desc`, `client_type`, `client_url`, `allow_url`, `contract_scope`, `code_mode`, `implicit_mode`, `password_mode`, `client_mode`, `access_token_timeout`, `refresh_token_timeout`, `client_token_timeout`, `past_client_token_timeout`, `logout_url`, `created_at`, `updated_at`)
VALUES
	('1015', '1009123', 'CMS-韩国站', NULL, '1', 'base', NULL, '*', NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


-- 批量同步模板数据，使用存储过程
DELIMITER $$

CREATE OR REPLACE PROCEDURE UpdateTemplates()
BEGIN
    DECLARE currentPageType INT DEFAULT 1;
    DECLARE currentAppId INT DEFAULT 1010;

    REPEAT
        SET currentAppId = 1010;
        REPEAT
            UPDATE templates AS dest
            JOIN (
                SELECT `content`, `content_new`, `config`, `config_new`
                FROM templates
                WHERE `page_type` = currentPageType AND `preset_flag` = 1 AND appid = 1009
            ) AS src
            SET dest.content = src.content,
                dest.content_new = src.content_new,
                dest.config = src.config,
                dest.config_new = src.config_new
            WHERE dest.page_type = currentPageType AND dest.preset_flag = currentPageType AND dest.appid = currentAppId;
            SET currentAppId = currentAppId + 1;
        UNTIL currentAppId > 1015
        END REPEAT;
        SET currentPageType = currentPageType + 1;
    UNTIL currentPageType > 15
    END REPEAT;

END$$

CALL UpdateTemplatesDynamic();

DROP PROCEDURE IF EXISTS UpdateTemplates$$

DELIMITER ;


