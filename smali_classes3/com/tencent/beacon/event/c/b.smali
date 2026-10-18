.class public final Lcom/tencent/beacon/event/c/b;
.super Lcom/tencent/beacon/base/net/a/c$a;
.source "EventConverterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/beacon/event/c/b$b;,
        Lcom/tencent/beacon/event/c/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/beacon/base/net/a/c$a<",
        "Lcom/tencent/beacon/event/EventBean;",
        "Lcom/tencent/beacon/event/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/beacon/event/c/b$b;

.field private final b:Lcom/tencent/beacon/event/c/b$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/base/net/a/c$a;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/beacon/event/c/b$b;

    invoke-direct {v0}, Lcom/tencent/beacon/event/c/b$b;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/c/b;->a:Lcom/tencent/beacon/event/c/b$b;

    .line 3
    new-instance v0, Lcom/tencent/beacon/event/c/b$a;

    invoke-direct {v0}, Lcom/tencent/beacon/event/c/b$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/event/c/b;->b:Lcom/tencent/beacon/event/c/b$a;

    return-void
.end method

.method public static a()Lcom/tencent/beacon/event/c/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/beacon/event/c/b;

    invoke-direct {v0}, Lcom/tencent/beacon/event/c/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/tencent/beacon/base/net/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/beacon/base/net/a/c<",
            "Lcom/tencent/beacon/event/EventBean;",
            "Lcom/tencent/beacon/event/a/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/event/c/b;->b:Lcom/tencent/beacon/event/c/b$a;

    return-object v0
.end method

.method public c()Lcom/tencent/beacon/base/net/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/beacon/base/net/a/c<",
            "Lcom/tencent/beacon/event/a/b;",
            "Lcom/tencent/beacon/event/EventBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/event/c/b;->a:Lcom/tencent/beacon/event/c/b$b;

    return-object v0
.end method
