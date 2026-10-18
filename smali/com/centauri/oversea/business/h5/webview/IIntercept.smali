.class public interface abstract Lcom/centauri/oversea/business/h5/webview/IIntercept;
.super Ljava/lang/Object;
.source "IIntercept.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/h5/webview/IIntercept$InterceptLevel;
    }
.end annotation


# static fields
.field public static final QUERY_CACHE:I = 0x0

.field public static final REPLACE_URL:I = 0x1


# virtual methods
.method public abstract handleUrl(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract level()I
.end method

.method public abstract queryCache(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method
