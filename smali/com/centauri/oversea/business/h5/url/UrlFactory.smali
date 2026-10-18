.class public Lcom/centauri/oversea/business/h5/url/UrlFactory;
.super Ljava/lang/Object;
.source "UrlFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/centauri/oversea/business/h5/url/IH5;
    .locals 1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "h5_mall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Lcom/centauri/oversea/business/h5/url/H5Mall;

    invoke-direct {p0}, Lcom/centauri/oversea/business/h5/url/H5Mall;-><init>()V

    :goto_0
    return-object p0
.end method
