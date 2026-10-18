.class public Lcom/intlgame/api/webview/INTLWebViewReqInfo;
.super Lcom/intlgame/tools/json/JsonSerializable;
.source "INTLWebViewReqInfo.java"


# static fields
.field public static final WEBVIEW_SCREEN_DEFAULT:I = 0x1

.field public static final WEBVIEW_SCREEN_LANDSCAPE:I = 0x3

.field public static final WEBVIEW_SCREEN_PORTRAIT:I = 0x2


# instance fields
.field public encrypt_enable_:Z
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "encrypt_enable_"
    .end annotation
.end field

.field public extra_json_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "extra_json_"
    .end annotation
.end field

.field public full_screen_enable_:Z
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "full_screen_enable_"
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "height"
    .end annotation
.end field

.field public high_dpi_support:Z
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "high_dpi_support"
    .end annotation
.end field

.field public left:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "left"
    .end annotation
.end field

.field public screen_orientation_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "screen_orientation_"
    .end annotation
.end field

.field public system_browser_enable_:Z
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "system_browser_enable_"
    .end annotation
.end field

.field public top:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "top"
    .end annotation
.end field

.field public url_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "url_"
    .end annotation
.end field

.field public width:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->left:I

    .line 44
    iput v0, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->top:I

    .line 48
    iput v0, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->width:I

    .line 52
    iput v0, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->height:I

    .line 56
    iput-boolean v0, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->high_dpi_support:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lcom/intlgame/tools/json/JsonSerializable;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->left:I

    .line 44
    iput p1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->top:I

    .line 48
    iput p1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->width:I

    .line 52
    iput p1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->height:I

    .line 56
    iput-boolean p1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->high_dpi_support:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lcom/intlgame/tools/json/JsonSerializable;-><init>(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->left:I

    .line 44
    iput p1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->top:I

    .line 48
    iput p1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->width:I

    .line 52
    iput p1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->height:I

    .line 56
    iput-boolean p1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->high_dpi_support:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTLWebViewReqInfo{url_=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->url_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', system_browser_enable_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->system_browser_enable_:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", screen_orientation_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->screen_orientation_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", full_screen_enable_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->full_screen_enable_:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encrypt_enable_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->encrypt_enable_:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extra_json_=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intlgame/api/webview/INTLWebViewReqInfo;->extra_json_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
