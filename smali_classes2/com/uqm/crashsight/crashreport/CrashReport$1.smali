.class final Lcom/uqm/crashsight/crashreport/CrashReport$1;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uqm/crashsight/crashreport/CrashReport;->initCrashReportWithAutoContext(Ljava/lang/String;ZLjava/lang/Object;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/lang/Object;

.field private synthetic c:Landroid/content/Context;

.field private synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/uqm/crashsight/crashreport/CrashReport$1;->a:Z

    iput-object p2, p0, Lcom/uqm/crashsight/crashreport/CrashReport$1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/uqm/crashsight/crashreport/CrashReport$1;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/uqm/crashsight/crashreport/CrashReport$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 136
    const-string v0, "[CrashSight]"

    const-string v1, "initCrashReport: "

    .line 137
    iget-boolean v2, p0, Lcom/uqm/crashsight/crashreport/CrashReport$1;->a:Z

    .line 138
    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/CrashReport$1;->b:Ljava/lang/Object;

    const-string v4, "initCrashReport"

    const-string v5, "com.uqm.crashsight.crashreport.CrashReport"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-eqz v3, :cond_0

    .line 141
    :try_start_0
    const-string v3, "com.uqm.crashsight.crashreport.CrashReport$UserStrategy"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 145
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2013
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1013
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/CrashReport$1;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/uqm/crashsight/crashreport/CrashReport$1;->d:Ljava/lang/String;

    .line 151
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v10, p0, Lcom/uqm/crashsight/crashreport/CrashReport$1;->b:Ljava/lang/Object;

    const/4 v11, 0x4

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v1, v12, v8

    aput-object v3, v12, v7

    aput-object v2, v12, v6

    aput-object v10, v12, v9

    new-array v1, v11, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v8

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    aput-object v0, v1, v9

    .line 148
    invoke-static {v5, v4, v12, v1}, Lcom/uqm/crashsight/CrashSightStrategy$a;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_2

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/crashreport/CrashReport$1;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/uqm/crashsight/crashreport/CrashReport$1;->d:Ljava/lang/String;

    .line 160
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aput-object v1, v3, v7

    aput-object v2, v3, v6

    new-array v0, v9, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v8

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v7

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    .line 158
    invoke-static {v5, v4, v3, v0}, Lcom/uqm/crashsight/CrashSightStrategy$a;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
