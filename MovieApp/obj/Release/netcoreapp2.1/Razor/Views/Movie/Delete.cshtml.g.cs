#pragma checksum "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "cdc1ffd2305f01acae9dc9857c3da080c52407bf"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Movie_Delete), @"mvc.1.0.view", @"/Views/Movie/Delete.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Movie/Delete.cshtml", typeof(AspNetCore.Views_Movie_Delete))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\_ViewImports.cshtml"
using MovieApp;

#line default
#line hidden
#line 2 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\_ViewImports.cshtml"
using MovieApp.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"cdc1ffd2305f01acae9dc9857c3da080c52407bf", @"/Views/Movie/Delete.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b7dd375ecbd23f05af2e7a2e1ae3c32af9a1424c", @"/Views/_ViewImports.cshtml")]
    public class Views_Movie_Delete : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<MovieApp.Models.TblMovie>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", "hidden", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Delete", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(32, 1, true);
            WriteLiteral("\n");
            EndContext();
#line 3 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
  
    ViewData["Title"] = "Delete";

#line default
#line hidden
            BeginContext(72, 314, true);
            WriteLiteral(@"
<section class=""page-section movie"" style=""margin-top:15px;"">
    <div class=""container"">
        <h2>Delete</h2>

        <h3>Are you sure you want to delete this?</h3>
        <div>
            <h4>TblMovie</h4>
            <hr />
            <dl class=""dl-horizontal"">
                <dt>
                    ");
            EndContext();
            BeginContext(387, 45, false);
#line 17 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayNameFor(model => model.MovieName));

#line default
#line hidden
            EndContext();
            BeginContext(432, 64, true);
            WriteLiteral("\n                </dt>\n                <dd>\n                    ");
            EndContext();
            BeginContext(497, 41, false);
#line 20 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayFor(model => model.MovieName));

#line default
#line hidden
            EndContext();
            BeginContext(538, 64, true);
            WriteLiteral("\n                </dd>\n                <dt>\n                    ");
            EndContext();
            BeginContext(603, 44, false);
#line 23 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayNameFor(model => model.Director));

#line default
#line hidden
            EndContext();
            BeginContext(647, 64, true);
            WriteLiteral("\n                </dt>\n                <dd>\n                    ");
            EndContext();
            BeginContext(712, 40, false);
#line 26 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayFor(model => model.Director));

#line default
#line hidden
            EndContext();
            BeginContext(752, 64, true);
            WriteLiteral("\n                </dd>\n                <dt>\n                    ");
            EndContext();
            BeginContext(817, 40, false);
#line 29 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayNameFor(model => model.Year));

#line default
#line hidden
            EndContext();
            BeginContext(857, 64, true);
            WriteLiteral("\n                </dt>\n                <dd>\n                    ");
            EndContext();
            BeginContext(922, 47, false);
#line 32 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayFor(model => model.Year.Value.Year));

#line default
#line hidden
            EndContext();
            BeginContext(969, 64, true);
            WriteLiteral("\n                </dd>\n                <dt>\n                    ");
            EndContext();
            BeginContext(1034, 44, false);
#line 35 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayNameFor(model => model.Synopsis));

#line default
#line hidden
            EndContext();
            BeginContext(1078, 64, true);
            WriteLiteral("\n                </dt>\n                <dd>\n                    ");
            EndContext();
            BeginContext(1143, 40, false);
#line 38 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayFor(model => model.Synopsis));

#line default
#line hidden
            EndContext();
            BeginContext(1183, 64, true);
            WriteLiteral("\n                </dd>\n                <dt>\n                    ");
            EndContext();
            BeginContext(1248, 46, false);
#line 41 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayNameFor(model => model.PosterLink));

#line default
#line hidden
            EndContext();
            BeginContext(1294, 64, true);
            WriteLiteral("\n                </dt>\n                <dd>\n                    ");
            EndContext();
            BeginContext(1359, 42, false);
#line 44 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayFor(model => model.PosterLink));

#line default
#line hidden
            EndContext();
            BeginContext(1401, 64, true);
            WriteLiteral("\n                </dd>\n                <dt>\n                    ");
            EndContext();
            BeginContext(1466, 47, false);
#line 47 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayNameFor(model => model.TrailerLink));

#line default
#line hidden
            EndContext();
            BeginContext(1513, 64, true);
            WriteLiteral("\n                </dt>\n                <dd>\n                    ");
            EndContext();
            BeginContext(1578, 43, false);
#line 50 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayFor(model => model.TrailerLink));

#line default
#line hidden
            EndContext();
            BeginContext(1621, 64, true);
            WriteLiteral("\n                </dd>\n                <dt>\n                    ");
            EndContext();
            BeginContext(1686, 41, false);
#line 53 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayNameFor(model => model.Likes));

#line default
#line hidden
            EndContext();
            BeginContext(1727, 64, true);
            WriteLiteral("\n                </dt>\n                <dd>\n                    ");
            EndContext();
            BeginContext(1792, 37, false);
#line 56 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayFor(model => model.Likes));

#line default
#line hidden
            EndContext();
            BeginContext(1829, 64, true);
            WriteLiteral("\n                </dd>\n                <dt>\n                    ");
            EndContext();
            BeginContext(1894, 44, false);
#line 59 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayNameFor(model => model.Dislikes));

#line default
#line hidden
            EndContext();
            BeginContext(1938, 64, true);
            WriteLiteral("\n                </dt>\n                <dd>\n                    ");
            EndContext();
            BeginContext(2003, 40, false);
#line 62 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
               Write(Html.DisplayFor(model => model.Dislikes));

#line default
#line hidden
            EndContext();
            BeginContext(2043, 54, true);
            WriteLiteral("\n                </dd>\n            </dl>\n\n            ");
            EndContext();
            BeginContext(2097, 240, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "abfc3a669e27436a993ac39d9c2282aa", async() => {
                BeginContext(2123, 17, true);
                WriteLiteral("\n                ");
                EndContext();
                BeginContext(2140, 41, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "af6d253ceb144502837f68be02887184", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.InputTypeName = (string)__tagHelperAttribute_0.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
#line 67 "C:\Users\Ykim1059\Downloads\VideoSelection-FinalSprintUI\VideoSelection-FinalSprintUI\MovieApp\Views\Movie\Delete.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.MovieId);

#line default
#line hidden
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-for", __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(2181, 98, true);
                WriteLiteral("\n                <input type=\"submit\" value=\"Delete\" class=\"btn btn-default\" /> |\n                ");
                EndContext();
                BeginContext(2279, 38, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "534c6067bb2440c8b8c48881a3c65828", async() => {
                    BeginContext(2301, 12, true);
                    WriteLiteral("Back to List");
                    EndContext();
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(2317, 13, true);
                WriteLiteral("\n            ");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(2337, 38, true);
            WriteLiteral("\n        </div>\n    </div>\n</section>\n");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<MovieApp.Models.TblMovie> Html { get; private set; }
    }
}
#pragma warning restore 1591
