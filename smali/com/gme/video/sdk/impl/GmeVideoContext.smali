.class public Lcom/gme/video/sdk/impl/GmeVideoContext;
.super Ljava/lang/Object;
.source "GmeVideoContext.java"


# static fields
.field private static final sInstance:Lcom/gme/video/sdk/impl/GmeVideoContext;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/gme/video/sdk/impl/GmeVideoContext;

    invoke-direct {v0}, Lcom/gme/video/sdk/impl/GmeVideoContext;-><init>()V

    sput-object v0, Lcom/gme/video/sdk/impl/GmeVideoContext;->sInstance:Lcom/gme/video/sdk/impl/GmeVideoContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/gme/video/sdk/impl/GmeVideoContext;
    .locals 1

    .line 13
    sget-object v0, Lcom/gme/video/sdk/impl/GmeVideoContext;->sInstance:Lcom/gme/video/sdk/impl/GmeVideoContext;

    return-object v0
.end method


# virtual methods
.method public getCtx()Landroid/content/Context;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/gme/video/sdk/impl/GmeVideoContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public registerCtx(Landroid/content/Context;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/gme/video/sdk/impl/GmeVideoContext;->mContext:Landroid/content/Context;

    return-void
.end method
