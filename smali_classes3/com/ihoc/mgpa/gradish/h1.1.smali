.class public abstract Lcom/ihoc/mgpa/gradish/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_TuringShield"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/h1;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/ihoc/mgpa/gradish/h1;->b:Z

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method

.method public static a(I)V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;ILandroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;ILcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;)V
    .locals 0

    return-void
.end method
