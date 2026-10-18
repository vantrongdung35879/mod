.class public Lcom/tencent/tme/live/chat/GameDataView;
.super Landroid/widget/FrameLayout;


# static fields
.field public static b:Lcom/tencent/tme/live/w0/b; = null

.field public static c:Z = false


# instance fields
.field public a:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/chat/GameDataView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/tencent/tme/live/chat/GameDataView;->a()V

    return-void
.end method

.method public static a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tme/live/chat/GameDataView;->c:Z

    const/16 v1, 0xc8

    const-string v2, "GameDataView"

    const-string v3, ", msg:"

    const-string v4, "getStreamInfo failed, code:"

    const/4 v5, 0x0

    if-eq p0, v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {v2, p0, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {v2, p0, v5}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_1
    const-string p0, "show_data_tab"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "schedule_id"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/tencent/tme/live/w0/b;

    invoke-direct {p1}, Lcom/tencent/tme/live/w0/b;-><init>()V

    iput-object p0, p1, Lcom/tencent/tme/live/w0/b;->a:Ljava/lang/String;

    const-string p0, "params"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_3

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/tencent/tme/live/w0/b$a;

    invoke-direct {v3}, Lcom/tencent/tme/live/w0/b$a;-><init>()V

    iput-object v2, v3, Lcom/tencent/tme/live/w0/b$a;->a:Ljava/lang/String;

    iput-object v1, v3, Lcom/tencent/tme/live/w0/b$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    :goto_2
    iput-object v5, p1, Lcom/tencent/tme/live/w0/b;->b:Ljava/util/List;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    invoke-static {}, Lcom/tencent/tme/live/o2/a;->a()Lcom/tencent/tme/live/o2/a;

    move-result-object p0

    const-string p2, "gameDataTabChanged"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/tme/live/o2/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    nop

    :cond_5
    :goto_3
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/tencent/tme/live/chat/GameDataView;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tme/live/chat/GameDataView;->c:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "room_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "getMatchBattleStatus"

    new-instance v1, Lcom/tencent/tme/live/chat/GameDataView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/tencent/tme/live/chat/GameDataView$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/tencent/tme/live/i/i;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/tencent/tme/live/i/i$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1
    const-string v1, "GameDataView"

    invoke-static {v1, p0, v0}, Lcom/tencent/tme/live/t1/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tencent/tme/live/biz/R$layout;->tmes_game_data:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/tencent/tme/live/biz/R$id;->webView:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    iput-object v0, p0, Lcom/tencent/tme/live/chat/GameDataView;->a:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    return-void
.end method

.method public b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tme/live/chat/GameDataView;->a:Lcom/tencent/tme/live/framework/view/webview/TMEWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tme/live/framework/view/webview/TMEWebView;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onStop error : "

    invoke-static {v1}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GameDataView"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tme/live/e/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getScheduleId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/tme/live/chat/GameDataView;->b:Lcom/tencent/tme/live/w0/b;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1
    :cond_0
    iget-object v0, v0, Lcom/tencent/tme/live/w0/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/tencent/tme/live/w0/b;)V
    .locals 0

    sput-object p1, Lcom/tencent/tme/live/chat/GameDataView;->b:Lcom/tencent/tme/live/w0/b;

    return-void
.end method
