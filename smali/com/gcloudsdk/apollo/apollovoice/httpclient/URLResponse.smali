.class public Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;
.super Ljava/lang/Object;
.source "URLResponse.java"


# instance fields
.field public URL:Ljava/lang/String;

.field public body:[B

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public httpCode:I

.field public httpCodeMsg:Ljava/lang/String;

.field public status:I

.field public statusMsg:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->status:I

    .line 19
    iput v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->httpCode:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->statusMsg:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->httpCodeMsg:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->URL:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->version:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->body:[B

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gcloudsdk/apollo/apollovoice/httpclient/URLResponse;->headers:Ljava/util/Map;

    return-void
.end method
